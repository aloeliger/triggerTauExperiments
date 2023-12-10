import ROOT
from examineTauInformation import getAllFiles
from rich.console import Console
from rich.progress import track
from triggerTauOverhaul.tauNtuplizers.utils.iEtaiPhiBinning import iEtaiPhiBinCollection
import h5py

console = Console()
theCollection = iEtaiPhiBinCollection()

def makeInputGrid(theChain):
    result = []
    for iPhi in range(18):
        iPhiRow = []
        for iEta in range(14):
            iPhiRow.append(theChain.modelInput[iPhi*14+iEta])
        result.append(iPhiRow)
    return result

def makeTauGrid(theChain):
    result = [[0 for i in range (14)] for j in range(18)]

    for nTau in range(theChain.Tau_nObjects):
        if theChain.byLooseDeepTau2018v2p5VSjetVector[nTau] != True:
            continue
        iEta, iPhi = theCollection.iEtaiPhi(
            theChain.Tau_etaVector[nTau],
            theChain.Tau_phiVector[nTau]
        )
        iEtaIndex = iEta - 4
        iPhiIndex = iPhi
        if iEtaIndex > 14 or iEtaIndex < 0:
            continue
        result[iPhiIndex][iEtaIndex] = 1
    return result

def main():
    theFiles = getAllFiles()
    console.print(f'# of files: {len(theFiles)}')

    # theFiles = ['testTaus_v1.root']

    theTauChain = ROOT.TChain('tauNtuplizer/Tau_info')
    theGridChain = ROOT.TChain('gridNtuplizer/L1TCaloSummaryTree')

    for fileName in theFiles:
        theTauChain.Add(fileName)
        theGridChain.Add(fileName)
    
    nEntries = theTauChain.GetEntries()
    console.print(f'# of entries: {nEntries}')

    grids = []
    tauGrids = []
    for entryNum in track(range(nEntries), description='Looping entries...'):
        theTauChain.GetEntry(entryNum)
        theGridChain.GetEntry(entryNum)

        theGrid = makeInputGrid(theGridChain)

        tauGrid = makeTauGrid(theTauChain)

        # somethingInTau = False
        # for i in range(18):
        #     for j in range(14):
        #         if tauGrid[i][j] != 0:
        #             somethingInTau = True
        #             break
        #     if somethingInTau:
        #         break
        # if somethingInTau:
        #     console.print('Grid:')
        #     console.print(theGrid)
        #     console.print('Basic tau grid:')
        #     console.print(tauGrid)
        grids.append(theGrid)
        tauGrids.append(tauGrid)
    with h5py.File("./dataset.h5", 'w') as theFile:
        theFile.create_dataset('inputs', data=grids)
        theFile.create_dataset('outputs', data=tauGrids)

if __name__ == '__main__':
    main()