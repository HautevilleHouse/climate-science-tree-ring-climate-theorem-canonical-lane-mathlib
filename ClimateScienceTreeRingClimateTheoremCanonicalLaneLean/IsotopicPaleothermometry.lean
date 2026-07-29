import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateTheoremCanonicalLaneLean

structure IsotopicPaleothermometry where
  delta18O : ℝ
  deltaD : ℝ
  temperature : ℝ
  slope : ℝ
  intercept : ℝ
  calibrationEquation : ℝ
  delta18OClosed : delta18O ∈ Set.Ioo (-60) 0
  deltaDClosed : deltaD ∈ Set.Ioo (-450) 0
  temperatureClosed : temperature ∈ Set.Ioo (-50) 50
  slopeClosed : slope > 0
  interceptClosed : intercept ∈ Set.Ioo (-20) 20
  calibrationEquationClosed : calibrationEquation = slope * delta18O + intercept

def IsotopicPaleothermometryClosed (I : IsotopicPaleothermometry) : Prop :=
  I.delta18OClosed ∧ I.deltaDClosed ∧ I.temperatureClosed ∧ I.slopeClosed ∧ I.interceptClosed ∧ I.calibrationEquationClosed

structure IsotopicPaleothermometryEvidence (I : IsotopicPaleothermometry) where
  delta18OClosed : I.delta18OClosed
  deltaDClosed : I.deltaDClosed
  temperatureClosed : I.temperatureClosed
  slopeClosed : I.slopeClosed
  interceptClosed : I.interceptClosed
  calibrationEquationClosed : I.calibrationEquationClosed

theorem isotopic_paleothermometry_closed_from_evidence (I : IsotopicPaleothermometry) (E : IsotopicPaleothermometryEvidence I) :
    IsotopicPaleothermometryClosed I := by
  exact And.intro E.delta18OClosed
    (And.intro E.deltaDClosed
      (And.intro E.temperatureClosed
        (And.intro E.slopeClosed
          (And.intro E.interceptClosed E.calibrationEquationClosed))))

end ClimateScienceTreeRingClimateTheoremCanonicalLaneLean
end HautevilleHouse