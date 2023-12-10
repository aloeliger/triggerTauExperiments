python3 -m venv hls4mlEnv
source hls4mlEnv/bin/activate
python3 -m pip install pip --upgrade --no-cache-dir
python3 -m pip install --no-cache-dir hls4ml pyparsing
deactivate

cmsrel CMSSW_14_0_0_pre1
cd CMSSW_14_0_0_pre1/src/
cmsenv

python3 -m venv trainEnv
source trainEnv/bin/activate
python3 -m pip install pip --upgrade --no-cache-dir
python3 -m pip install --no-cache-dir QKeras keras-tuner
deactivate

cd ../../
cp -r triggerTauOverhaul CMSSW_14_0_0_pre1/src/
cd CMSSW_14_0_0_pre1/src/
cmsenv
scram b
cd ../../
