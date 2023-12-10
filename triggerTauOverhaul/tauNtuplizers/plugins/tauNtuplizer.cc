#include <memory>
#include <iostream>
#include <string>

// user include files
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

#include "DataFormats/PatCandidates/interface/Tau.h"

#include "triggerTauOverhaul/tauNtuplizers/interface/baseObjectNtuplizer.h"

class tauNtuplizer: public baseObjectNtuplizer<pat::Tau>
{
    public:
        explicit tauNtuplizer(const edm::ParameterSet&);
        ~tauNtuplizer() override = default;
    
    private:
        void analyze(const edm::Event&, const edm::EventSetup&) override;

        std::vector<float> decayModeFindingVector;
        std::vector<float> decayModeFindingNewDMsVector;

        std::vector<float> deepTau2017v2p1VSeVector;
        std::vector<float> deepTau2017v2p1VSmuVector;
        std::vector<float> deepTau2017v2p1VSjetVector;  

        std::vector<bool> byDeepTau2018v2p5VSerawVector;
        std::vector<bool> byLooseDeepTau2018v2p5VSeVector;
        std::vector<bool> byMediumDeepTau2018v2p5VSeVector;
        std::vector<bool> byTightDeepTau2018v2p5VSeVector;
        std::vector<bool> byVLooseDeepTau2018v2p5VSeVector;
        std::vector<bool> byVTightDeepTau2018v2p5VSeVector;
        std::vector<bool> byVVLooseDeepTau2018v2p5VSeVector;
        std::vector<bool> byVVTightDeepTau2018v2p5VSeVector;
        std::vector<bool> byVVVLooseDeepTau2018v2p5VSeVector;
        std::vector<bool> byDeepTau2018v2p5VSjetrawVector;
        std::vector<bool> byLooseDeepTau2018v2p5VSjetVector;
        std::vector<bool> byMediumDeepTau2018v2p5VSjetVector;
        std::vector<bool> byTightDeepTau2018v2p5VSjetVector;
        std::vector<bool> byVLooseDeepTau2018v2p5VSjetVector;
        std::vector<bool> byVTightDeepTau2018v2p5VSjetVector;
        std::vector<bool> byVVLooseDeepTau2018v2p5VSjetVector;
        std::vector<bool> byVVTightDeepTau2018v2p5VSjetVector;
        std::vector<bool> byVVVLooseDeepTau2018v2p5VSjetVector;
        std::vector<bool> byDeepTau2018v2p5VSmurawVector;
        std::vector<bool> byLooseDeepTau2018v2p5VSmuVector;
        std::vector<bool> byMediumDeepTau2018v2p5VSmuVector;
        std::vector<bool> byTightDeepTau2018v2p5VSmuVector;

        bool dumpedIDs = false;
};

tauNtuplizer::tauNtuplizer(const edm::ParameterSet& iConfig):
    baseObjectNtuplizer<pat::Tau>(iConfig)
{
    outputTree->Branch((objectName+"_decayModeFinding").c_str(), &decayModeFindingVector);
    outputTree->Branch((objectName+"_decayModeFindingNewDMs").c_str(), &decayModeFindingNewDMsVector);

    outputTree->Branch((objectName+"_deepTau2017v2p1VSeVector").c_str(), &deepTau2017v2p1VSeVector);
    outputTree->Branch((objectName+"_deepTau2017v2p1VSmuVector").c_str(), &deepTau2017v2p1VSmuVector);
    outputTree->Branch((objectName+"_deepTau2017v2p1VSjetVector").c_str(), &deepTau2017v2p1VSjetVector);

    outputTree->Branch("byDeepTau2018v2p5VSerawVector", &byDeepTau2018v2p5VSerawVector);
    outputTree->Branch("byLooseDeepTau2018v2p5VSeVector", &byLooseDeepTau2018v2p5VSeVector);
    outputTree->Branch("byMediumDeepTau2018v2p5VSeVector", &byMediumDeepTau2018v2p5VSeVector);
    outputTree->Branch("byTightDeepTau2018v2p5VSeVector", &byTightDeepTau2018v2p5VSeVector);
    outputTree->Branch("byVLooseDeepTau2018v2p5VSeVector", &byVLooseDeepTau2018v2p5VSeVector);
    outputTree->Branch("byVTightDeepTau2018v2p5VSeVector", &byVTightDeepTau2018v2p5VSeVector);
    outputTree->Branch("byVVLooseDeepTau2018v2p5VSeVector", &byVVLooseDeepTau2018v2p5VSeVector);
    outputTree->Branch("byVVTightDeepTau2018v2p5VSeVector", &byVVTightDeepTau2018v2p5VSeVector);
    outputTree->Branch("byVVVLooseDeepTau2018v2p5VSeVector", &byVVVLooseDeepTau2018v2p5VSeVector);
    outputTree->Branch("byDeepTau2018v2p5VSjetrawVector", &byDeepTau2018v2p5VSjetrawVector);
    outputTree->Branch("byLooseDeepTau2018v2p5VSjetVector", &byLooseDeepTau2018v2p5VSjetVector);
    outputTree->Branch("byMediumDeepTau2018v2p5VSjetVector", &byMediumDeepTau2018v2p5VSjetVector);
    outputTree->Branch("byTightDeepTau2018v2p5VSjetVector", &byTightDeepTau2018v2p5VSjetVector);
    outputTree->Branch("byVLooseDeepTau2018v2p5VSjetVector", &byVLooseDeepTau2018v2p5VSjetVector);
    outputTree->Branch("byVTightDeepTau2018v2p5VSjetVector", &byVTightDeepTau2018v2p5VSjetVector);
    outputTree->Branch("byVVLooseDeepTau2018v2p5VSjetVector", &byVVLooseDeepTau2018v2p5VSjetVector);
    outputTree->Branch("byVVTightDeepTau2018v2p5VSjetVector", &byVVTightDeepTau2018v2p5VSjetVector);
    outputTree->Branch("byVVVLooseDeepTau2018v2p5VSjetVector", &byVVVLooseDeepTau2018v2p5VSjetVector);
    outputTree->Branch("byDeepTau2018v2p5VSmurawVector", &byDeepTau2018v2p5VSmurawVector);
    outputTree->Branch("byLooseDeepTau2018v2p5VSmuVector", &byLooseDeepTau2018v2p5VSmuVector);
    outputTree->Branch("byMediumDeepTau2018v2p5VSmuVector", &byMediumDeepTau2018v2p5VSmuVector);
    outputTree->Branch("byTightDeepTau2018v2p5VSmuVector", &byTightDeepTau2018v2p5VSmuVector);
}

void tauNtuplizer::analyze(const edm::Event& iEvent, const edm::EventSetup& iSetup)
{
    edm::Handle<std::vector<pat::Tau>> tauHandle;
    iEvent.getByToken(objectToken, tauHandle);

    for(auto theTau = tauHandle->begin();
        theTau != tauHandle->end();
        theTau++)
    {
        // if(not dumpedIDs)
        // {
        //     auto thePairs = theTau->tauIDs();
        //     for(
        //         auto thePair = thePairs.begin();
        //         thePair != thePairs.end();
        //         thePair++
        //     )
        //     {
        //         std::cout<<"ID: "<<thePair->first<<" Value: "<<thePair->second<<std::endl;
        //     }
        //     dumpedIDs=true;
        // }
        decayModeFindingVector.push_back(
            theTau->tauID("decayModeFinding")
        );
        decayModeFindingNewDMsVector.push_back(
            theTau->tauID("decayModeFindingNewDMs")
        );

        deepTau2017v2p1VSeVector.push_back(
            theTau->tauID("byDeepTau2017v2p1VSeraw")
        );
        deepTau2017v2p1VSmuVector.push_back(
            theTau->tauID("byDeepTau2017v2p1VSmuraw")
        );
        deepTau2017v2p1VSjetVector.push_back(
            theTau->tauID("byDeepTau2017v2p1VSjetraw")
        );

        byDeepTau2018v2p5VSerawVector.push_back(theTau->tauID("byDeepTau2018v2p5VSeraw"));
        byLooseDeepTau2018v2p5VSeVector.push_back(theTau->tauID("byLooseDeepTau2018v2p5VSe"));
        byMediumDeepTau2018v2p5VSeVector.push_back(theTau->tauID("byMediumDeepTau2018v2p5VSe"));
        byTightDeepTau2018v2p5VSeVector.push_back(theTau->tauID("byTightDeepTau2018v2p5VSe"));
        byVLooseDeepTau2018v2p5VSeVector.push_back(theTau->tauID("byVLooseDeepTau2018v2p5VSe"));
        byVTightDeepTau2018v2p5VSeVector.push_back(theTau->tauID("byVTightDeepTau2018v2p5VSe"));
        byVVLooseDeepTau2018v2p5VSeVector.push_back(theTau->tauID("byVVLooseDeepTau2018v2p5VSe"));
        byVVTightDeepTau2018v2p5VSeVector.push_back(theTau->tauID("byVVTightDeepTau2018v2p5VSe"));
        byVVVLooseDeepTau2018v2p5VSeVector.push_back(theTau->tauID("byVVVLooseDeepTau2018v2p5VSe"));
        byDeepTau2018v2p5VSjetrawVector.push_back(theTau->tauID("byDeepTau2018v2p5VSjetraw"));
        byLooseDeepTau2018v2p5VSjetVector.push_back(theTau->tauID("byLooseDeepTau2018v2p5VSjet"));
        byMediumDeepTau2018v2p5VSjetVector.push_back(theTau->tauID("byMediumDeepTau2018v2p5VSjet"));
        byTightDeepTau2018v2p5VSjetVector.push_back(theTau->tauID("byTightDeepTau2018v2p5VSjet"));
        byVLooseDeepTau2018v2p5VSjetVector.push_back(theTau->tauID("byVLooseDeepTau2018v2p5VSjet"));
        byVTightDeepTau2018v2p5VSjetVector.push_back(theTau->tauID("byVTightDeepTau2018v2p5VSjet"));
        byVVLooseDeepTau2018v2p5VSjetVector.push_back(theTau->tauID("byVVLooseDeepTau2018v2p5VSjet"));
        byVVTightDeepTau2018v2p5VSjetVector.push_back(theTau->tauID("byVVTightDeepTau2018v2p5VSjet"));
        byVVVLooseDeepTau2018v2p5VSjetVector.push_back(theTau->tauID("byVVVLooseDeepTau2018v2p5VSjet"));
        byDeepTau2018v2p5VSmurawVector.push_back(theTau->tauID("byDeepTau2018v2p5VSmuraw"));
        byLooseDeepTau2018v2p5VSmuVector.push_back(theTau->tauID("byLooseDeepTau2018v2p5VSmu"));
        byMediumDeepTau2018v2p5VSmuVector.push_back(theTau->tauID("byMediumDeepTau2018v2p5VSmu"));
        byTightDeepTau2018v2p5VSmuVector.push_back(theTau->tauID("byTightDeepTau2018v2p5VSmu"));
    }

        baseObjectNtuplizer::analyze(iEvent, iSetup);

        decayModeFindingVector.clear();
        decayModeFindingNewDMsVector.clear();

        deepTau2017v2p1VSeVector.clear();
        deepTau2017v2p1VSmuVector.clear();
        deepTau2017v2p1VSjetVector.clear();

        byDeepTau2018v2p5VSerawVector.clear();
        byLooseDeepTau2018v2p5VSeVector.clear();
        byMediumDeepTau2018v2p5VSeVector.clear();
        byTightDeepTau2018v2p5VSeVector.clear();
        byVLooseDeepTau2018v2p5VSeVector.clear();
        byVTightDeepTau2018v2p5VSeVector.clear();
        byVVLooseDeepTau2018v2p5VSeVector.clear();
        byVVTightDeepTau2018v2p5VSeVector.clear();
        byVVVLooseDeepTau2018v2p5VSeVector.clear();
        byDeepTau2018v2p5VSjetrawVector.clear();
        byLooseDeepTau2018v2p5VSjetVector.clear();
        byMediumDeepTau2018v2p5VSjetVector.clear();
        byTightDeepTau2018v2p5VSjetVector.clear();
        byVLooseDeepTau2018v2p5VSjetVector.clear();
        byVTightDeepTau2018v2p5VSjetVector.clear();
        byVVLooseDeepTau2018v2p5VSjetVector.clear();
        byVVTightDeepTau2018v2p5VSjetVector.clear();
        byVVVLooseDeepTau2018v2p5VSjetVector.clear();
        byDeepTau2018v2p5VSmurawVector.clear();
        byLooseDeepTau2018v2p5VSmuVector.clear();
        byMediumDeepTau2018v2p5VSmuVector.clear();
        byTightDeepTau2018v2p5VSmuVector.clear();
}

DEFINE_FWK_MODULE(tauNtuplizer);