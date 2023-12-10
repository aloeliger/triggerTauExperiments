import ROOT
from rich.console import Console
from rich.progress import track
import os

console = Console()

def matchCaloAndHPSTaus(caloTauVectors, hpsTauVectors):
    caloTauIndices = [i for i in range(len(caloTauVectors))]
    hpsTauIndices = [i for i in range(len(hpsTauVectors))]

    # console.print(caloTauIndices)
    # console.print(hpsTauIndices)

    matchedIndices = []
    unmatchedIndices = [
        [], # calo taus
        [], # hps taus
    ]
    # console.print('Running match')
    for caloTauIndex, caloTauVector in enumerate(caloTauVectors):
        # console.print('Making distances')
        distances = []
        for hpsTauIndex in hpsTauIndices:
            distances.append((hpsTauIndex, caloTauVector.DeltaR(hpsTauVectors[hpsTauIndex])))
        distances.sort(key = lambda x: x[1])
        for i in range(len(distances)):
            if distances[i][1] > 0.3:
                distances[:i]
                break
        # if we have no appropriate HPS tau at this point, this is no an unmatched calo tau
        # console.print('Checking for zero')
        if len(distances) == 0:
            unmatchedIndices[0].append(caloTauIndex) #strictly this is unnecessary, but it could help with record keeping
            continue
        # console.print('Distances:')
        # console.print(distances)
        # console.print(len(distances))
        # console.print('Matching to hps taus')
        highestPt = 0.0
        highestIndex = None
        # console.print(hpsTauIndices)
        for hpsTauIndex, DeltaR in distances:
            if hpsTauVectors[hpsTauIndex].Pt() > highestPt:
                highestIndex = hpsTauIndex
        theIndex = hpsTauIndices.pop(hpsTauIndices.index(highestIndex))
        # console.print(f'Matched {caloTauIndex} {theIndex}')
        matchedIndices.append(
            (caloTauIndex, theIndex)
        )
    # After we go through all the calo taus, add any hps taus left into unmatches
    # console.print(distances)
    # console.print('Leftover HPS taus')
    for index in hpsTauIndices:
        unmatchedIndices[1].append(index)
    # console.print('Done running match')
    # console.print(unmatchedIndices)
    return matchedIndices, unmatchedIndices

def getAllFiles():
    fileNames = []
    filePaths = [
        '/hdfs/store/user/aloelige/EphemeralZeroBias4/tauNtuplization_2023RunD_EZB4_09Dec2023/',
        '/hdfs/store/user/aloelige/EphemeralZeroBias5/tauNtuplization_2023RunD_EZB5_09Dec2023/',
    ]
    for filePath in filePaths:
        for root, dirs, files in os.walk(filePath, topdown=True):
            for name in files:
                fileNames.append(os.path.join(root, name))
    return fileNames

def main():
    theFiles = getAllFiles()
    console.print(f'# of files: {len(theFiles)}')

    # theFiles = ['testTaus.root']
    theChain = ROOT.TChain('tauNtuplizer/Tau_info')
    theCaloTauChain = ROOT.TChain('l1UpgradeTree/L1UpgradeTree')

    for fileName in theFiles:
        theChain.Add(fileName)
        theCaloTauChain.Add(fileName)
    
    nEntries = theChain.GetEntries()
    console.print(f'Number of entries: {nEntries}')

    
    totalTaus = 0
    averageTaus = 0
    passLooseAntiJet = 0
    passLooseAntiElectron = 0
    passLooseAntiMuon = 0
    passLooseDiscriminators = 0

    totalTriggerTaus = 0
    averageTriggerTaus = 0
    nQualTriggerTaus = 0
    nIsoTriggerTaus = 0
    nMatchedTriggerTaus = 0
    nMatchedJetDiscrim = 0
    nMatchedDiscrimTriggerTaus = 0

    averageTriggerTauEt = 0.0
    averageTriggerTauIso = 0.0

    for entryNum in track(range(nEntries), description='Looping entries'):
        theChain.GetEntry(entryNum)
        theCaloTauChain.GetEntry(entryNum)

        totalTaus += theChain.Tau_nObjects
        averageTaus += theChain.Tau_nObjects

        totalTriggerTaus += theCaloTauChain.L1Upgrade.nTaus
        averageTriggerTaus += theCaloTauChain.L1Upgrade.nTaus

        HPSTauFourVectors = []
        HPSJetDiscrimTauFourVectors = []
        HPSDiscrimTauFourVectors = []
        caloTauFourVectors = []

        for i in range(theChain.Tau_nObjects):
            tauLorentzVector = ROOT.TLorentzVector()
            tauLorentzVector.SetPtEtaPhiM(
                theChain.Tau_ptVector[i],
                theChain.Tau_etaVector[i],
                theChain.Tau_phiVector[i],
                theChain.Tau_massVector[i],
            )
            HPSTauFourVectors.append(
                tauLorentzVector
            )
            if theChain.byLooseDeepTau2018v2p5VSeVector[i] == True:
                passLooseAntiElectron += 1
            if theChain.byLooseDeepTau2018v2p5VSjetVector[i] == True:
                passLooseAntiJet += 1
                discrimVector = ROOT.TLorentzVector()
                discrimVector.SetPtEtaPhiM(
                    theChain.Tau_ptVector[i],
                    theChain.Tau_etaVector[i],
                    theChain.Tau_phiVector[i],
                    theChain.Tau_massVector[i],                    
                )
                HPSJetDiscrimTauFourVectors.append(
                    discrimVector
                )
            if theChain.byLooseDeepTau2018v2p5VSmuVector[i] == True:
                passLooseAntiMuon += 1
            if (
                theChain.byLooseDeepTau2018v2p5VSeVector[i] == True
                and theChain.byLooseDeepTau2018v2p5VSjetVector[i] == True
                and theChain.byLooseDeepTau2018v2p5VSmuVector == True
            ):
                passLooseDiscriminators += 1
                discrimVector = ROOT.TLorentzVector()
                discrimVector.SetPtEtaPhiM(
                    theChain.Tau_ptVector[i],
                    theChain.Tau_etaVector[i],
                    theChain.Tau_phiVector[i],
                    theChain.Tau_massVector[i],
                )
                HPSDiscrimTauFourVectors.append(
                    discrimVector
                )
        # console.print(theCaloTauChain.L1Upgrade.nTaus)
        for i in range(theCaloTauChain.L1Upgrade.nTaus):
            triggerTauLorentzVector = ROOT.TLorentzVector()
            # console.print(f'\t{theCaloTauChain.L1Upgrade.tauHwQual[i]}')
            # if theCaloTauChain.L1Upgrade.tauHwQual[i] != 0: 
            #     nQualTriggerTaus += 1
            # console.print()
            # console.print(theCaloTauChain.L1Upgrade.tauEt[i])
            # console.print(theCaloTauChain.L1Upgrade.tauIso[i])
            # console.print(theCaloTauChain.L1Upgrade.tauIsoEt[i])
            # console.print((theCaloTauChain.L1Upgrade.tauEt[i]-theCaloTauChain.L1Upgrade.tauIsoEt[i])/theCaloTauChain.L1Upgrade.tauEt[i])
            # console.print()
            if theCaloTauChain.L1Upgrade.tauIso[i] == 1:
                nIsoTriggerTaus += 1
                triggerTauLorentzVector.SetPtEtaPhiE(
                    theCaloTauChain.L1Upgrade.tauEt[i],
                    theCaloTauChain.L1Upgrade.tauEta[i],
                    theCaloTauChain.L1Upgrade.tauPhi[i],
                    theCaloTauChain.L1Upgrade.tauEt[i],
                )
                caloTauFourVectors.append(
                    triggerTauLorentzVector
                )

        matchedNoDiscrim, unmatchedNoDiscrim = matchCaloAndHPSTaus(caloTauFourVectors, HPSTauFourVectors)
        matchedDiscrim, unmatchedDiscrim = matchCaloAndHPSTaus(caloTauFourVectors, HPSDiscrimTauFourVectors)
        matchedJetDiscrim, unmatchedJetDiscrim = matchCaloAndHPSTaus(caloTauFourVectors, HPSJetDiscrimTauFourVectors)

        nMatchedTriggerTaus += len(matchedNoDiscrim)
        nMatchedDiscrimTriggerTaus += len(matchedDiscrim)
        nMatchedJetDiscrim += len(matchedJetDiscrim)

    averageTaus = averageTaus / nEntries
    averageTriggerTaus = averageTriggerTaus / nEntries

    console.print(f'Total Taus: {totalTaus}')
    console.print(f'Average Taus per event: {averageTaus}')
    console.print(f'# Taus past loose anti jet: {passLooseAntiJet}, {passLooseAntiJet/totalTaus: .3%}')
    console.print(f'# Taus past loose anti electon: {passLooseAntiElectron}, {passLooseAntiElectron/totalTaus: .3%}')
    console.print(f'# Taus past loose anti muon: {passLooseAntiMuon}, {passLooseAntiMuon/totalTaus: .3%}')
    console.print(f'# Taus past all loose discriminators: {passLooseDiscriminators}, {passLooseDiscriminators: .3%}')
    console.print('')
    console.print(f'Total trigger taus: {totalTriggerTaus}')
    console.print(f'Average trigger taus per event: {averageTriggerTaus}')
    # console.print(f'# qual trigger taus: {nQualTriggerTaus}. {nQualTriggerTaus: .3%}')
    console.print(f'# iso trigger taus: {nIsoTriggerTaus}, {nIsoTriggerTaus/totalTriggerTaus: .3%}')
    console.print(f'Average iso trigger taus per event: {nIsoTriggerTaus/nEntries}')
    console.print(f'# iso Trigger taus matched to an HPS tau: {nMatchedTriggerTaus}, {nMatchedTriggerTaus/nIsoTriggerTaus: .3%}')
    console.print(f'# iso Trigger taus matched to an HPS tau with discrims: {nMatchedDiscrimTriggerTaus}, {nMatchedDiscrimTriggerTaus/nIsoTriggerTaus: .3%}')
    console.print(f'# iso Trigger taus matched to an HPS tau with jet discrimination: {nMatchedJetDiscrim}, {nMatchedJetDiscrim/nIsoTriggerTaus: .3%}')
                
    
if __name__ == '__main__':
    main()