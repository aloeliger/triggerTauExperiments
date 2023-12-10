import FWCore.ParameterSet.Config as cms

randomSelectionFilter = cms.EDFilter('randomSelectionFilter',
                                     reductionRate = cms.double(6.0))