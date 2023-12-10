import FWCore.ParameterSet.Config as cms

gridNtuplizer = cms.EDAnalyzer(
    'gridNtuplizer',
    regionsToken = cms.InputTag("simCaloStage2Layer1Digis"),
)