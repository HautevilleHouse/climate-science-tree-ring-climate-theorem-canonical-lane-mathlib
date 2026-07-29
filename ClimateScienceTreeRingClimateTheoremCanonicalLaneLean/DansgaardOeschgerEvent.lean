import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateTheoremCanonicalLaneLean

structure DansgaardOeschgerEventPackage where
  iceCoreRapidWarming : Type u
  greenlandRecord : Prop
  atlanticMeridionalOverturning : Prop
  abruptTransitionModel : Prop
  treeRingCorrelation : Prop

structure DansgaardOeschgerEventEvidence (D : DansgaardOeschgerEventPackage) where
  greenlandRecordClosed : D.greenlandRecord
  atlanticMeridionalOverturningClosed : D.atlanticMeridionalOverturning
  abruptTransitionModelClosed : D.abruptTransitionModel
  treeRingCorrelationClosed : D.treeRingCorrelation

def DansgaardOeschgerEventClosed (D : DansgaardOeschgerEventPackage) : Prop :=
  D.greenlandRecord ∧ D.atlanticMeridionalOverturning ∧ D.abruptTransitionModel ∧ D.treeRingCorrelation

theorem dansgaard_oeschger_event_closed_from_evidence (D : DansgaardOeschgerEventPackage) (E : DansgaardOeschgerEventEvidence D) : DansgaardOeschgerEventClosed D := by
  exact And.intro E.greenlandRecordClosed (And.intro E.atlanticMeridionalOverturningClosed (And.intro E.abruptTransitionModelClosed E.treeRingCorrelationClosed))

end ClimateScienceTreeRingClimateTheoremCanonicalLaneLean
end HautevilleHouse