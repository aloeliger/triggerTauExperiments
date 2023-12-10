// system include files
#include <memory>

// user include files
#include "FWCore/Framework/interface/Frameworkfwd.h"
#include "FWCore/Framework/interface/stream/EDFilter.h"
#include "FWCore/Framework/interface/Event.h"
#include "FWCore/Framework/interface/MakerMacros.h"

#include "FWCore/ParameterSet/interface/ParameterSet.h"

#include "FWCore/Utilities/interface/StreamID.h"
#include "FWCore/Utilities/interface/RandomNumberGenerator.h"

#include "FWCore/ServiceRegistry/interface/Service.h"

#include "CLHEP/Random/RandomEngine.h"

//
// class declaration
//

class randomSelectionFilter : public edm::stream::EDFilter<> {
public:
  explicit randomSelectionFilter(const edm::ParameterSet&);
  ~randomSelectionFilter() override = default;

  static void fillDescriptions(edm::ConfigurationDescriptions& descriptions);

private:
  void beginStream(edm::StreamID) override {};
  bool filter(edm::Event&, const edm::EventSetup&) override;
  void endStream() override {};

  double reductionRate;

};


randomSelectionFilter::randomSelectionFilter(const edm::ParameterSet& iConfig) {
  reductionRate = iConfig.exists("reductionRate") ? iConfig.getParameter<double>("reductionRate"): 100.0;
}


// ------------ method called on each new Event  ------------
bool randomSelectionFilter::filter(edm::Event& iEvent, const edm::EventSetup& iSetup) {
  using namespace edm;
  edm::Service<edm::RandomNumberGenerator> rng;
  CLHEP::HepRandomEngine& engine = rng->getEngine(iEvent.streamID());
  bool acceptance = engine.flat() <= (1.0/reductionRate);
  return acceptance;
}


// ------------ method fills 'descriptions' with the allowed parameters for the module  ------------
void randomSelectionFilter::fillDescriptions(edm::ConfigurationDescriptions& descriptions) {
  //The following says we do not know what parameters are allowed so do no validation
  // Please change this to state exactly what you do use, even if it is no parameters
  edm::ParameterSetDescription desc;
  desc.setUnknown();
  descriptions.addDefault(desc);
}
//define this as a plug-in
DEFINE_FWK_MODULE(randomSelectionFilter);