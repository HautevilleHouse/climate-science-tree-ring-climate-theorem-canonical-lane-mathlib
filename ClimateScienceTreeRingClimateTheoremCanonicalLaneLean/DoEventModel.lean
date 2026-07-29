import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateTheoremCanonicalLaneLean

structure DOEventModel where
  eventTiming : Type u
  abruptWarming : Prop
  iceRafting : Prop
  atlanticMeridionalOverturning : Prop
  greenlandIceCoreProxy : Prop
  warmingClosed : abruptWarming
  raftingClosed : iceRafting
  amocClosed : atlanticMeridionalOverturning
  proxyClosed : greenlandIceCoreProxy

structure DOEventEvidence (M : DOEventModel) where
  warmingClosed : M.abruptWarming
  raftingClosed : M.iceRafting
  amocClosed : M.atlanticMeridionalOverturning
  proxyClosed : M.greenlandIceCoreProxy

def DOEventModelClosed (M : DOEventModel) : Prop :=
  M.abruptWarming ∧ M.iceRafting ∧ M.atlanticMeridionalOverturning ∧ M.greenlandIceCoreProxy

theorem do_event_model_closed_from_evidence (M : DOEventModel) (E : DOEventEvidence M) : DOEventModelClosed M := by
  exact And.intro E.warmingClosed (And.intro E.raftingClosed (And.intro E.amocClosed E.proxyClosed))

end ClimateScienceTreeRingClimateTheoremCanonicalLaneLean
end HautevilleHouse