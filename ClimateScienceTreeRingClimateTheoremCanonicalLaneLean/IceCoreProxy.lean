import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateTheoremCanonicalLaneLean

structure IceCoreProxy where
  deltaO18Series : Type u
  annualResolution : Prop
  temperatureCalibration : Prop
  methaneSignature : Prop
  deuteriumExcess : Prop
  annualResolutionClosed : annualResolution
  temperatureCalibrationClosed : temperatureCalibration
  methaneSignatureClosed : methaneSignature
  deuteriumExcessClosed : deuteriumExcess

structure IceCoreProxyEvidence (I : IceCoreProxy) where
  annualResolutionClosed : I.annualResolution
  temperatureCalibrationClosed : I.temperatureCalibration
  methaneSignatureClosed : I.methaneSignature
  deuteriumExcessClosed : I.deuteriumExcess

def IceCoreProxyClosed (I : IceCoreProxy) : Prop :=
  I.annualResolution ∧ I.temperatureCalibration ∧ I.methaneSignature ∧ I.deuteriumExcess

theorem ice_core_proxy_closed_from_evidence (I : IceCoreProxy) (E : IceCoreProxyEvidence I) : IceCoreProxyClosed I := by
  exact And.intro E.annualResolutionClosed (And.intro E.temperatureCalibrationClosed (And.intro E.methaneSignatureClosed E.deuteriumExcessClosed))

end ClimateScienceTreeRingClimateTheoremCanonicalLaneLean
end HautevilleHouse