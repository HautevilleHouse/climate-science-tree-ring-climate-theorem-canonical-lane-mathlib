import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateTheoremCanonicalLaneLean

structure MilankovitchCycles where
  eccentricity : ℝ
  obliquity : ℝ
  precession : ℝ
  insolation : ℝ
  insolationFormula : ℝ
  eccentricityClosed : 0 ≤ eccentricity ∧ eccentricity ≤ 0.06
  obliquityClosed : 22.1 ≤ obliquity ∧ obliquity ≤ 24.5
  precessionClosed : -180 ≤ precession ∧ precession ≤ 180
  insolationClosed : insolation > 0
  insolationFormulaClosed : insolation = 1360 * (1 + eccentricity * cos((precession : ℝ) * π / 180)) / (1 - eccentricity^2) * sin(obliquity * π / 180)

structure MilankovitchCyclesEvidence (M : MilankovitchCycles) where
  eccentricityClosed : M.eccentricityClosed
  obliquityClosed : M.obliquityClosed
  precessionClosed : M.precessionClosed
  insolationClosed : M.insolationClosed
  insolationFormulaClosed : M.insolationFormulaClosed

def MilankovitchCyclesClosed (M : MilankovitchCycles) : Prop :=
  M.eccentricityClosed ∧ M.obliquityClosed ∧ M.precessionClosed ∧
  M.insolationClosed ∧ M.insolationFormulaClosed

theorem milankovitch_cycles_closed_from_evidence (M : MilankovitchCycles) (E : MilankovitchCyclesEvidence M) :
    MilankovitchCyclesClosed M := by
  exact And.intro E.eccentricityClosed
    (And.intro E.obliquityClosed
      (And.intro E.precessionClosed
        (And.intro E.insolationClosed E.insolationFormulaClosed)))

end ClimateScienceTreeRingClimateTheoremCanonicalLaneLean
end HautevilleHouse