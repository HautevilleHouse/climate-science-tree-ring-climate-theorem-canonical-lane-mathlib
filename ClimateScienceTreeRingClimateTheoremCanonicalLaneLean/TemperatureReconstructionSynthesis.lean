import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateTheoremCanonicalLaneLean

structure TemperatureReconstructionSynthesisPackage where
  targetReconstruction : String
  calibrationSkillScore : ℝ
  verificationSkillScore : ℝ
  uncertaintyInterval : ℝ × ℝ
  coveragePeriod : String
  seasonalTarget : String
  reconstructionValidated : Prop
  skillScoreAboveThreshold : Prop
  reconstructionValidatedTerm : reconstructionValidated
  skillScoreAboveThresholdTerm : skillScoreAboveThreshold

structure TemperatureReconstructionSynthesisEvidence
  (T : TemperatureReconstructionSynthesisPackage) where
  reconstructionValidatedClosed : T.reconstructionValidated
  skillScoreAboveThresholdClosed : T.skillScoreAboveThreshold

def TemperatureReconstructionSynthesisClosed (T : TemperatureReconstructionSynthesisPackage) : Prop :=
  T.reconstructionValidated ∧ T.skillScoreAboveThreshold

theorem temperature_reconstruction_synthesis_closed_from_evidence
  (T : TemperatureReconstructionSynthesisPackage) (E : TemperatureReconstructionSynthesisEvidence T) :
  TemperatureReconstructionSynthesisClosed T := by
  exact And.intro E.reconstructionValidatedClosed E.skillScoreAboveThresholdClosed

end ClimateScienceTreeRingClimateTheoremCanonicalLaneLean
end HautevilleHouse