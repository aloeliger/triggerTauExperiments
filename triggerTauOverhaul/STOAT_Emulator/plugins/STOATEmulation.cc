#include <memory>

#include "FWCore/Framework/interface/Frameworkfwd.h"
#include "FWCore/Framework/interface/stream/EDProducer.h"

#include "FWCore/Framework/interface/Event.h"
#include "FWCore/Framework/interface/MakerMacros.h"
#include "FWCore/MessageLogger/interface/MessageLogger.h"

#include "FWCore/ParameterSet/interface/ParameterSet.h"

#include "DataFormats/L1CaloTrigger/interface/L1CaloCollections.h"
#include "DataFormats/L1CaloTrigger/interface/L1CaloRegion.h"

#include "ap_fixed.h"
#include "hls4ml/emulator.h"

#include <string>

class STOATEmulator : public edm::stream::EDProducer<> {
    public: 
        explicit STOATEmulator(const edm::ParameterSet&);
        ~STOATEmulator() override = default;

    private:
        void produce(edm::Event&, const edm::EventSetup&) override;

        edm::EDGetTokenT<L1CaloRegionCollection> emuRegionsToken;

        hls4mlEmulator::ModelLoader loader;
        std::shared_ptr<hls4mlEmulator::Model> model;

};

STOATEmulator::STOATEmulator(const edm::ParameterSet& iConfig):
    emuRegionsToken(consumes<L1CaloRegionCollection>(iConfig.getParameter<edm::InputTag>("emuRegionsToken"))),
    loader(hls4mlEmulator::ModelLoader(iConfig.getParameter<std::string>("STOATModel")))
{
    model = loader.load_model();
}

void STOATEmulator::produce(edm::Event& iEvent, const edm::EventSetup& iSetup)
{
    edm::Handle<std::vector<L1CaloRegion>> emuRegions;
    iEvent.getByToken(emuRegionsToken, emuRegions);
    ap_fixed<16,6> modelInput[18*14*1];
    for(const L1CaloRegion& theRegion: *emuRegions)
    {
        modelInput[theRegion.gctPhi()*14+(theRegion.gctEta()-4)] = theRegion.et();
    }
    ap_fixed<16,6> modelResult[18*14*1];
    model->prepare_input(modelInput);
    model->predict();
    model->read_result(modelResult);

    for(int i = 0; i < 18; ++i)
    {
        for(int j = 0; j < 14; j++)
        {
            std::cout<<modelResult[i*14+j]<<", ";
        }
        std::cout<<std::endl;
    }
}

DEFINE_FWK_MODULE(STOATEmulator);