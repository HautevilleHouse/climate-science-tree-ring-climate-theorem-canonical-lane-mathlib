import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateTheoremCanonicalLaneLean

structure TreeRingClimateRecord where
  ringWidth : ℝ
  temperatureProxy : ℝ
  precipitationProxy : ℝ
  growthModel : ℝ
  sensitivity : ℝ
  ringWidthClosed : ringWidth > 0
  temperatureProxyClosed : temperatureProxy ∈ Set.Ioo (-10) 30
  precipitationProxyClosed : precipitationProxy ∈ Set.Ioo (0) 200
  growthModelClosed : growthModel = 1 / (1 + exp(-(temperatureProxy - 15)/5)) * exp(-(precipitationProxy - 50)^2 / 100)
  sensitivityClosed : sensitivity > 0

structure TreeRingClimateEvidence (T : TreeRingClimateRecord) where
  ringWidthClosed : T.ringWidthClosed
  temperatureProxyClosed : T.temperatureProxyClosed
  precipitationProxyClosed : T.precipitationProxyClosed
  growthModelClosed : T.growthModelClosed
  sensitivityClosed : T.sensitivityClosed

def TreeRingClimateRecordClosed (T : TreeRingClimateRecord) : Prop :=
  T.ringWidthClosed ∧ T.temperatureProxyClosed ∧ T.precipitationProxyClosed ∧
  T.growthModelClosed ∧ T.sensitivityClosed

theorem tree_ring_climate_record_closed_from_evidence (T : TreeRingClimateRecord) (E : TreeRingClimateEvidence T) :
    TreeRingClimateRecordClosed T := by
  exact And.intro E.ringWidthClosed
    (And.intro E.temperatureProxyClosed
      (And.intro E.precipitationProxyClosed
        (And.intro E.growthModelClosed E.sensitivityClosed)))

end ClimateScienceTreeRingClimateTheoremCanonicalLaneLean
end HautevilleHouse