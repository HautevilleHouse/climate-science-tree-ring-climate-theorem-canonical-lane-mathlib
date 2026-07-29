import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateTheoremCanonicalLaneLean

structure ProxyCalibrationPackage where
  calibrationTarget : Type u
  transferFunction : Prop
  uncertaintyEstimate : Prop
  validationPeriod : Prop
  independentVerification : Prop
  transferClosed : transferFunction
  uncertaintyClosed : uncertaintyEstimate
  validationClosed : validationPeriod
  verificationClosed : independentVerification

structure ProxyCalibrationEvidence (P : ProxyCalibrationPackage) where
  transferClosed : P.transferFunction
  uncertaintyClosed : P.uncertaintyEstimate
  validationClosed : P.validationPeriod
  verificationClosed : P.independentVerification

def ProxyCalibrationClosed (P : ProxyCalibrationPackage) : Prop :=
  P.transferFunction ∧ P.uncertaintyEstimate ∧ P.validationPeriod ∧ P.independentVerification

theorem proxy_calibration_closed_from_evidence (P : ProxyCalibrationPackage) (E : ProxyCalibrationEvidence P) : ProxyCalibrationClosed P := by
  exact And.intro E.transferClosed (And.intro E.uncertaintyClosed (And.intro E.validationClosed E.verificationClosed))

end ClimateScienceTreeRingClimateTheoremCanonicalLaneLean
end HautevilleHouse