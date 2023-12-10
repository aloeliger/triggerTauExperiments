import FWCore.ParameterSet.Config as cms

tauNtuplizer = cms.EDAnalyzer(
    'tauNtuplizer',
    objectSrc = cms.InputTag('slimmedTaus'),
    objectName = cms.string('Tau'),
)