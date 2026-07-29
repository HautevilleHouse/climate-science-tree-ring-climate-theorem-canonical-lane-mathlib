import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateTheoremCanonicalLaneLean

structure TreeRingProxyPackage where
  ringWidthSeries : Type u
  standardizationModel : Prop
  chronologyConstruction : Prop
  temperatureReconstruction : Type v
  growthClimateResponse : Prop

structure TreeRingProxyEvidence (P : TreeRingProxyPackage) where
  standardizationModelClosed : P.standardizationModel
  chronologyConstructionClosed : P.chronologyConstruction
  growthClimateResponseClosed : P.growthClimateResponse

def TreeRingProxyClosed (P : TreeRingProxyPackage) : Prop :=
  P.standardizationModel ∧ P.chronologyConstruction ∧ P.growthClimateResponse

theorem tree_ring_proxy_closed_from_evidence (P : TreeRingProxyPackage) (E : TreeRingProxyEvidence P) : TreeRingProxyClosed P := by
  exact And.intro E.standardizationModelClosed (And.intro E.chronologyConstructionClosed E.growthClimateResponseClosed)

end ClimateScienceTreeRingClimateTheoremCanonicalLaneLean
end HautevilleHouse