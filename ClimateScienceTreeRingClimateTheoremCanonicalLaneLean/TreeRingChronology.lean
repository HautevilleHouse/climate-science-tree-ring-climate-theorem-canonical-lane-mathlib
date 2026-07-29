import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateTheoremCanonicalLaneLean

structure TreeRingChronologyPackage where
  ringWidthSeries : Type u
  crossdatingMatch : Prop
  standardizedGrowthIndex : Prop
  ageBandingCorrection : Prop
  replicationAcrossSites : Prop
  crossdatingClosed : crossdatingMatch
  standardizedClosed : standardizedGrowthIndex
  ageBandingClosed : ageBandingCorrection
  replicationClosed : replicationAcrossSites

structure TreeRingChronologyEvidence (P : TreeRingChronologyPackage) where
  crossdatingClosed : P.crossdatingMatch
  standardizedClosed : P.standardizedGrowthIndex
  ageBandingClosed : P.ageBandingCorrection
  replicationClosed : P.replicationAcrossSites

def TreeRingChronologyClosed (P : TreeRingChronologyPackage) : Prop :=
  P.crossdatingMatch ∧ P.standardizedGrowthIndex ∧
  P.ageBandingCorrection ∧ P.replicationAcrossSites

theorem tree_ring_chronology_closed_from_evidence (P : TreeRingChronologyPackage) (E : TreeRingChronologyEvidence P) : TreeRingChronologyClosed P := by
  exact And.intro E.crossdatingClosed (And.intro E.standardizedClosed (And.intro E.ageBandingClosed E.replicationClosed))

end ClimateScienceTreeRingClimateTheoremCanonicalLaneLean
end HautevilleHouse