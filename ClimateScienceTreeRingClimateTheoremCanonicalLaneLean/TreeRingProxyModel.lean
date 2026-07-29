import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateTheoremCanonicalLaneLean

structure TreeRingProxyPackage where
  ringWidthIndex : Type u
  temperatureProxy : Type v
  humidityProxy : Type w
  annualResolution : Prop
  calibrationData : Prop
  detrendingMethod : Prop

structure TreeRingProxyEvidence (P : TreeRingProxyPackage) where
  annualResolutionClosed : P.annualResolution
  calibrationDataClosed : P.calibrationData
  detrendingMethodClosed : P.detrendingMethod

def TreeRingProxyClosed (P : TreeRingProxyPackage) : Prop :=
  P.annualResolution ∧ P.calibrationData ∧ P.detrendingMethod

theorem tree_ring_proxy_closed_from_evidence (P : TreeRingProxyPackage)
    (E : TreeRingProxyEvidence P) : TreeRingProxyClosed P := by
  exact And.intro E.annualResolutionClosed
    (And.intro E.calibrationDataClosed E.detrendingMethodClosed)

end ClimateScienceTreeRingClimateTheoremCanonicalLaneLean
end HautevilleHouse
