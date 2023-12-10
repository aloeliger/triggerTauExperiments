// system include files
#include <memory>
#include <iostream>

// user include files
#include "FWCore/Framework/interface/Frameworkfwd.h"
#include "FWCore/Framework/interface/one/EDAnalyzer.h"
#include "FWCore/Framework/interface/Event.h"
#include "FWCore/Framework/interface/EventSetup.h"
#include "FWCore/Framework/interface/MakerMacros.h"
#include "FWCore/ParameterSet/interface/ParameterSet.h"
#include "FWCore/Utilities/interface/InputTag.h"
#include "FWCore/ServiceRegistry/interface/Service.h"

#include "DataFormats/EcalDigi/interface/EcalDigiCollections.h"
#include "DataFormats/HcalDigi/interface/HcalDigiCollections.h"
#include "DataFormats/L1CaloTrigger/interface/L1CaloCollections.h"
#include "DataFormats/L1CaloTrigger/interface/L1CaloRegion.h"

#include "CommonTools/UtilAlgos/interface/TFileService.h"

#include "TTree.h"

class gridNtuplizer: public edm::one::EDAnalyzer< edm::one::SharedResources>
{
    public:
        explicit gridNtuplizer(const edm::ParameterSet&);
        ~gridNtuplizer() override = default; 
    private:
        void beginJob() override {};
        void analyze(const edm::Event&, const edm::EventSetup&) override;
        void endJob() override {};

        edm::Service<TFileService> theFileService;
        TTree* triggerTree;

        edm::EDGetTokenT<L1CaloRegionCollection> regionsToken;
        unsigned short int modelInput[18][14];
};

gridNtuplizer::gridNtuplizer(const edm::ParameterSet& iConfig):
    regionsToken(consumes<L1CaloRegionCollection>(iConfig.getParameter<edm::InputTag>("regionsToken")))
{
    triggerTree = theFileService->make< TTree >("L1TCaloSummaryTree","L1TCaloSummary Information");
    triggerTree -> Branch("modelInput", &modelInput, "modelInput[18][14]/s");
}

void gridNtuplizer::analyze(const edm::Event& iEvent, const edm::EventSetup& iSetup)
{
    edm::Handle<std::vector<L1CaloRegion>> regionHandle;
    iEvent.getByToken(regionsToken, regionHandle);
    for(const L1CaloRegion& theRegion: *regionHandle)
    {
        modelInput[theRegion.gctPhi()][theRegion.gctEta()-4] = theRegion.et();
    }
    triggerTree->Fill();
}

DEFINE_FWK_MODULE(gridNtuplizer);