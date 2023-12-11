import FWCore.ParameterSet.Config as cms

from triggerTauOverhaul.STOAT_Emulator.runSTOATEmulation_cff import process

process.source.fileNames = cms.untracked.vstring(
    "/store/data/Run2023D/EphemeralZeroBias4/MINIAOD/PromptReco-v1/000/369/870/00000/b0f635d0-ad4d-4432-be73-5a45b7bc564a.root",
)

process.source.secondaryFileNames = cms.untracked.vstring(
    *(
        "/store/data/Run2023D/EphemeralZeroBias4/RAW/v1/000/369/870/00000/1a1fe85a-9214-4dff-8b2b-600f2296d716.root",
        "/store/data/Run2023D/EphemeralZeroBias4/RAW/v1/000/369/870/00000/1bfc403d-0ca4-4050-8961-0c48d2b3e2bc.root",
        "/store/data/Run2023D/EphemeralZeroBias4/RAW/v1/000/369/870/00000/2374081d-79b8-45aa-b85e-d245a66dca27.root",
        "/store/data/Run2023D/EphemeralZeroBias4/RAW/v1/000/369/870/00000/363b7ba3-f180-44e6-b3e2-1a91d8f4f35a.root",
        "/store/data/Run2023D/EphemeralZeroBias4/RAW/v1/000/369/870/00000/3865ce8d-c891-4d6b-9f2f-b91146523e5d.root",
        "/store/data/Run2023D/EphemeralZeroBias4/RAW/v1/000/369/870/00000/3de86433-da4f-4a42-ad15-5008cff0cc41.root",
        "/store/data/Run2023D/EphemeralZeroBias4/RAW/v1/000/369/870/00000/41dc7fd2-4b22-4d40-8af0-ba49ab6683a9.root",
        "/store/data/Run2023D/EphemeralZeroBias4/RAW/v1/000/369/870/00000/4ede0b56-94c2-465a-b0de-d4fe0435c71b.root",
        "/store/data/Run2023D/EphemeralZeroBias4/RAW/v1/000/369/870/00000/844d6117-55b6-449c-aa87-97f9911aa5fa.root",
        "/store/data/Run2023D/EphemeralZeroBias4/RAW/v1/000/369/870/00000/93322468-2aec-418b-ae4c-904d9d89966a.root",
        "/store/data/Run2023D/EphemeralZeroBias4/RAW/v1/000/369/870/00000/9ccf661d-e7e7-4dd2-93fc-02b2e15bca31.root",
        "/store/data/Run2023D/EphemeralZeroBias4/RAW/v1/000/369/870/00000/a3200e5d-1f04-458e-ac90-648b8e1c3861.root",
        "/store/data/Run2023D/EphemeralZeroBias4/RAW/v1/000/369/870/00000/be41d0fa-67fc-47b7-8755-93f2a956561d.root",

    )
)