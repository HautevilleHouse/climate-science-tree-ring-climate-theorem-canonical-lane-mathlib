import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateTheoremCanonicalLaneLean

structure MilankovitchForcingPackage where
  orbitalParameters : Type u
  insolationCurve : Prop
  precessionCycle : Prop
  obliquityCycle : Prop
  eccentricityCycle : Prop

structure MilankovitchForcingEvidence (M : MilankovitchForcingPackage) where
  insolationCurveClosed : M.insolationCurve
  precessionCycleClosed : M.precessionCycle
  obliquityCycleClosed : M.obliquityCycle
  eccentricityCycleClosed : M.eccentricityCycle

def MilankovitchForcingClosed (M : MilankovitchForcingPackage) : Prop :=
  M.insolationCurve ∧ M.precessionCycle ∧ M.obliquityCycle ∧ M.eccentricityCycle

theorem milankovitch_forcing_closed_from_evidence (M : MilankovitchForcingPackage) (E : MilankovitchForcingEvidence M) : MilankovitchForcingClosed M := by
  exact And.intro E.insolationCurveClosed (And.intro E.precessionCycleClosed (And.intro E.obliquityCycleClosed E.eccentricityCycleClosed))

end ClimateScienceTreeRingClimateTheoremCanonicalLaneLean
end HautevilleHouse