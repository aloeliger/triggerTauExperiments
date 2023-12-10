#ifndef TAUNTUPLIZER_BASEOBJECTNTUPLIZER_H
#define TAUNTUPLIZER_BASEOBJECTNTUPLIZER_H

#include <memory>
#include <iostream>
#include <string>

#include "FWCore/Framework/interface/Frameworkfwd.h"
#include "FWCore/Framework/interface/one/EDAnalyzer.h"
#include "FWCore/Framework/interface/Event.h"
#include "FWCore/Framework/interface/EventSetup.h"
#include "FWCore/Framework/interface/MakerMacros.h"
#include "FWCore/ParameterSet/interface/ParameterSet.h"
#include "FWCore/Utilities/interface/InputTag.h"
#include "FWCore/ServiceRegistry/interface/Service.h"

#include "CommonTools/UtilAlgos/interface/TFileService.h"

#include "TTree.h"

template<class T>
class baseObjectNtuplizer: public edm::one::EDAnalyzer< edm::one::SharedResources >
{
    public:
        explicit baseObjectNtuplizer(const edm::ParameterSet&);
        ~baseObjectNtuplizer() override = default;
    
    private:
        void beginJob() override {};
        void endJob() override {};
    
    protected:
        void analyze(const edm::Event&, const edm::EventSetup&) override;

        edm::EDGetTokenT<std::vector<T>> objectToken;
        edm::Service<TFileService> theFileService;

        std::string objectName;
            
        TTree* outputTree;
        unsigned int nObjects = 0;
        std::vector<double> ptVector;
        std::vector<double> etaVector;
        std::vector<double> phiVector;
        std::vector<double> massVector;
        std::vector<double> etVector;
        std::vector<int> chargeVector;
        std::vector<double> mtVector;
        std::vector<double> vxVector;
        std::vector<double> vyVector;
        std::vector<double> vzVector;
};

template <class T>
baseObjectNtuplizer<T>::baseObjectNtuplizer(const edm::ParameterSet& iConfig):
    objectToken(consumes<std::vector<T>>(iConfig.getParameter<edm::InputTag>("objectSrc"))),
    objectName(iConfig.getParameter<std::string>("objectName"))
{
    usesResource("TFileService");

    outputTree = theFileService->make<TTree>((objectName+"_info").c_str(), "4 vector information");
    outputTree->Branch((objectName+"_nObjects").c_str(), &nObjects);
    outputTree->Branch((objectName+"_ptVector").c_str(), &ptVector);
    outputTree->Branch((objectName+"_etaVector").c_str(), &etaVector);
    outputTree->Branch((objectName+"_phiVector").c_str(), &phiVector);
    outputTree->Branch((objectName+"_massVector").c_str(), &massVector);
    outputTree->Branch((objectName+"_etVector").c_str(), &etVector);
    outputTree->Branch((objectName+"_chargeVector").c_str(), &chargeVector);
    outputTree->Branch((objectName+"_mtVector").c_str(), &mtVector);
    outputTree->Branch((objectName+"_vxVector").c_str(), &vxVector);
    outputTree->Branch((objectName+"_vyVector").c_str(), &vyVector);
    outputTree->Branch((objectName+"_vzVector").c_str(), &vzVector);
}

template<class T>
void baseObjectNtuplizer<T>::analyze(const edm::Event& iEvent, const edm::EventSetup& iSetup)
{
    edm::Handle<std::vector<T>> objectHandle;
    iEvent.getByToken(objectToken, objectHandle);

    nObjects = objectHandle->size();

    for(auto theObject = objectHandle->begin();
    theObject != objectHandle->end();
    theObject++) 
    {
        ptVector.push_back(theObject->pt());
        etaVector.push_back(theObject->eta());
        phiVector.push_back(theObject->phi());
        massVector.push_back(theObject->mass());
        etVector.push_back(theObject->et());
        chargeVector.push_back(theObject->charge());
        mtVector.push_back(theObject->mt());
        vxVector.push_back(theObject->vx());
        vyVector.push_back(theObject->vy());
        vzVector.push_back(theObject->vz());
    }

    outputTree->Fill();

    nObjects = 0;
    ptVector.clear();
    etaVector.clear();
    phiVector.clear();
    massVector.clear();
    etVector.clear();     
    chargeVector.clear();
    mtVector.clear();
    vxVector.clear();
    vyVector.clear();
    vzVector.clear();
}

#endif