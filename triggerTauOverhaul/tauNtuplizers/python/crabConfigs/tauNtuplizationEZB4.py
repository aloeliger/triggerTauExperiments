from CRABClient.UserUtilities import config
import os
import datetime

config = config()
todaysDate = datetime.date.today().strftime('%d%b%Y')

config.General.requestName = f'tauNtuplization_2023RunD_EZB4_{todaysDate}'
config.General.workArea = 'crabWorkArea'
config.General.transferOutputs = True

config.JobType.pluginName = 'Analysis'
config.JobType.psetName = f'{os.environ["CMSSW_BASE"]}/src/triggerTauOverhaul/tauNtuplizers/python/ntuplizeTriggerTaus.py'
config.JobType.maxMemoryMB = 4000

config.Data.inputDataset = '/EphemeralZeroBias4/Run2023D-PromptReco-v1/MINIAOD'
config.Data.secondaryInputDataset = '/EphemeralZeroBias4/Run2023D-v1/RAW'
config.Data.inputDBS = 'global'
config.Data.splitting = 'Automatic'
config.Data.publication = False
config.Data.outputDatasetTag = f'tauNtuplization_2023RunD_EZB4_{todaysDate}'

config.Site.storageSite = 'T2_US_Wisconsin'