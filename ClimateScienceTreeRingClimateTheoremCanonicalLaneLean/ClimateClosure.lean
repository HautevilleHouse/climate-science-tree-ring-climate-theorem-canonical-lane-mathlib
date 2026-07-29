import canonicalLaneMathlib.AdmissibleClass
import ClimateScienceTreeRingClimateTheoremCanonicalLaneLean.BridgeLemmas
import ClimateScienceTreeRingClimateTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateTheoremCanonicalLaneLean

def ConstrainedClimateClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_climate_endgame (A : AdmissibleClass) :
    ConstrainedClimateClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClimateScienceTreeRingClimateTheoremCanonicalLaneLean
end HautevilleHouse