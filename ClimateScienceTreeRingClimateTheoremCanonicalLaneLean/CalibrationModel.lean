import ClimateScienceTreeRingClimateTheoremCanonicalLaneLean.ProxyDataEvidence

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateTheoremCanonicalLaneLean

structure CalibrationPackage where
  transferFunction : Prop
  uncertaintyEstimate : Prop
  verificationPeriod : Prop

def CalibrationClosed (C : CalibrationPackage) : Prop :=
  C.transferFunction ∧ C.uncertaintyEstimate ∧ C.verificationPeriod

theorem calibration_evidence (C : CalibrationPackage) (tf : C.transferFunction) (ue : C.uncertaintyEstimate) (vp : C.verificationPeriod) :
    CalibrationClosed C := by
  exact And.intro tf (And.intro ue vp)

end ClimateScienceTreeRingClimateTheoremCanonicalLaneLean
end HautevilleHouse