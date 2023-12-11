import FWCore.ParameterSet.Config as cms

STOATEmulator = cms.EDProducer(
    'STOATEmulator',
    emuRegionsToken = cms.InputTag("simCaloStage2Layer1Digis"),
    STOATModel = cms.string("STOAT_Compiler/STOAT_Model_v1")
)