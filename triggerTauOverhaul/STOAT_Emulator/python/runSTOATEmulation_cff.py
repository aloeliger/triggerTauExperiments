import FWCore.ParameterSet.Config as cms

from Configuration.Eras.Era_Run3_2023_cff import Run3_2023

import FWCore.ParameterSet.VarParsing as VarParsing
options = VarParsing.VarParsing ('analysis')
options.register('secondaryFiles',
                 [],
                 VarParsing.VarParsing.multiplicity.list,
                VarParsing.VarParsing.varType.string,
                "Secondary files to use in SUEP skimming"
)
options.parseArguments()

process = cms.Process("NTUPLIZE",Run3_2023)
process.load('Configuration.StandardSequences.Services_cff')
process.load('SimGeneral.HepPDTESSource.pythiapdt_cfi')
process.load('FWCore.MessageService.MessageLogger_cfi')
process.load('Configuration.EventContent.EventContent_cff')
process.load('Configuration.StandardSequences.GeometryRecoDB_cff')
process.load('Configuration.StandardSequences.MagneticField_cff')
process.load('Configuration.StandardSequences.RawToDigi_Data_cff')
process.load('Configuration.StandardSequences.EndOfProcess_cff')
process.load('Configuration.StandardSequences.FrontierConditions_GlobalTag_cff')

process.maxEvents = cms.untracked.PSet(
    input = cms.untracked.int32(options.maxEvents)
)
process.MessageLogger.cerr.FwkReport.reportEvery = 10000

process.source = cms.Source("PoolSource",
                            fileNames = cms.untracked.vstring(options.inputFiles),
                            secondaryFileNames = cms.untracked.vstring(options.secondaryFiles),
)

process.options = cms.untracked.PSet(
    FailPath = cms.untracked.vstring(),
    IgnoreCompletely = cms.untracked.vstring(),
    Rethrow = cms.untracked.vstring(),
    SkipEvent = cms.untracked.vstring(),
    allowUnscheduled = cms.obsolete.untracked.bool,
    canDeleteEarly = cms.untracked.vstring(),
    deleteNonConsumedUnscheduledModules = cms.untracked.bool(True),
    dumpOptions = cms.untracked.bool(False),
    emptyRunLumiMode = cms.obsolete.untracked.string,
    eventSetup = cms.untracked.PSet(
        forceNumberOfConcurrentIOVs = cms.untracked.PSet(
            allowAnyLabel_=cms.required.untracked.uint32
        ),
        numberOfConcurrentIOVs = cms.untracked.uint32(0)
    ),
    fileMode = cms.untracked.string('FULLMERGE'),
    forceEventSetupCacheClearOnNewRun = cms.untracked.bool(False),
    makeTriggerResults = cms.obsolete.untracked.bool,
    numberOfConcurrentLuminosityBlocks = cms.untracked.uint32(0),
    numberOfConcurrentRuns = cms.untracked.uint32(1),
    numberOfStreams = cms.untracked.uint32(0),
    numberOfThreads = cms.untracked.uint32(1),
    printDependencies = cms.untracked.bool(False),
    sizeOfStackForThreadsInKB = cms.optional.untracked.uint32,
    throwIfIllegalParameter = cms.untracked.bool(True),
    wantSummary = cms.untracked.bool(False)
)

from Configuration.AlCa.GlobalTag import GlobalTag
process.GlobalTag = GlobalTag(process.GlobalTag, '130X_dataRun3_Prompt_v4', '')

process.load('triggerTauOverhaul.tauNtuplizers.randomSelectionFilter_cfi')
process.RandomNumberGeneratorService = cms.Service("RandomNumberGeneratorService",
                                                        randomSelectionFilter = cms.PSet(
                                                        initialSeed = cms.untracked.uint32(1234),
                                                        engineName = cms.untracked.string('TRandom3')
                                                   ),                                                   
)

process.raw2digi_step = cms.Path(process.RawToDigi)
process.endjob_step = cms.EndPath(process.endOfProcess)

process.schedule = cms.Schedule(process.raw2digi_step, process.endjob_step)
from PhysicsTools.PatAlgos.tools.helpers import associatePatAlgosToolsTask
associatePatAlgosToolsTask(process)

from L1Trigger.Configuration.customiseReEmul import L1TReEmulFromRAW
process = L1TReEmulFromRAW(process)

process.load('triggerTauOverhaul.STOAT_Emulator.STOATEmulation_cfi')
process.STOATPath = cms.Path(process.STOATEmulator)
process.schedule.append(process.STOATPath)

# from L1Trigger.L1TNtuples.customiseL1Ntuple import L1NtupleRAWEMU 
# process = L1NtupleRAWEMU(process)
# process.l1ntupleraw.remove(process.l1uGTTestcrateTree)

# process.load('triggerTauOverhaul.tauNtuplizers.tauNtuplizer_cfi')
# process.load('triggerTauOverhaul.gridNtuplizers.gridNtuplization_cfi')

# process.tauNtuplizationPath = cms.Path(process.tauNtuplizer+process.gridNtuplizer)
# process.schedule.append(process.tauNtuplizationPath)

# process.TFileService = cms.Service(
# 	"TFileService",
#     fileName = cms.string(options.outputFile)
# )

# process.raw2digi_step.insert(0, process.randomSelectionFilter)
# process.L1TReEmulPath.insert(0, process.randomSelectionFilter)
# process.l1ntupleraw.insert(0, process.randomSelectionFilter)
# process.l1ntupleemu.insert(0, process.randomSelectionFilter)
# process.tauNtuplizationPath.insert(0, process.randomSelectionFilter)

print("schedule:")
print(process.schedule)
print("schedule contents:")
print([x for x in process.schedule])