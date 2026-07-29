import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateTheoremCanonicalLaneLean

structure ClimateTimeDomain where
  years : Type u
  start : years
  le : years -> years -> Prop
  intervalTopology : Prop
  hasInitialTime : Prop
  continuous : Prop

structure TreeRingProxyRecord (T : ClimateTimeDomain) where
  ringWidthIndex : T.years -> ℝ
  maximumLatewoodDensity : T.years -> ℝ
  replicationDepth : Nat
  detrended : Prop
  ageRelatedBiasRemoved : Prop
  detrendedTerm : detrended
  ageRelatedBiasRemovedTerm : ageRelatedBiasRemoved

structure InstrumentalTemperatureRecord (T : ClimateTimeDomain) where
  temperatureAnomaly : T.years -> ℝ
  coverageFraction : ℝ
  calibrationPeriod : T.years -> Prop
  calibrationPeriodTerm : calibrationPeriod

structure ProxyCalibrationPackage (T : ClimateTimeDomain)
  (P : TreeRingProxyRecord T) (I : InstrumentalTemperatureRecord T) where
  regressionCoefficient : ℝ
  residualVariance : ℝ
  reconstructionPeriod : T.years -> Prop
  verificationSkillScore : ℝ
  reconstructionPeriodTerm : reconstructionPeriod

def ProxyCalibrationClosed {T : ClimateTimeDomain} {P : TreeRingProxyRecord T} {I : InstrumentalTemperatureRecord T}
  (C : ProxyCalibrationPackage T P I) : Prop :=
  C.reconstructionPeriod ∧ (C.verificationSkillScore > 0.0)

structure ProxyCalibrationEvidence {T : ClimateTimeDomain} {P : TreeRingProxyRecord T} {I : InstrumentalTemperatureRecord T}
  (C : ProxyCalibrationPackage T P I) where
  reconstructionPeriodClosed : C.reconstructionPeriod
  verificationSkillScoreClosed : C.verificationSkillScore > 0.0

theorem proxy_calibration_closed_from_evidence {T : ClimateTimeDomain} {P : TreeRingProxyRecord T} {I : InstrumentalTemperatureRecord T}
  (C : ProxyCalibrationPackage T P I) (E : ProxyCalibrationEvidence C) : ProxyCalibrationClosed C := by
  exact And.intro E.reconstructionPeriodClosed E.verificationSkillScoreClosed

end ClimateScienceTreeRingClimateTheoremCanonicalLaneLean
end HautevilleHouse