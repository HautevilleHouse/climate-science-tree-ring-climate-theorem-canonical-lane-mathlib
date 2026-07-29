import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateTheoremCanonicalLaneLean

structure UncertaintyQuantificationPackage where
  measurementErrorModel : Prop
  proxySystematicError : Prop
  calibrationResidualVariance : ℝ
  reconstructionTotalUncertainty : ℝ
  confidenceIntervalBootstrap : Prop
  spatialRepresentativityError : Prop
  measurementErrorModelTerm : measurementErrorModel
  proxySystematicErrorTerm : proxySystematicError
  confidenceIntervalBootstrapTerm : confidenceIntervalBootstrap
  spatialRepresentativityErrorTerm : spatialRepresentativityError

structure UncertaintyQuantificationEvidence
  (U : UncertaintyQuantificationPackage) where
  measurementErrorModelClosed : U.measurementErrorModel
  proxySystematicErrorClosed : U.proxySystematicError
  confidenceIntervalBootstrapClosed : U.confidenceIntervalBootstrap
  spatialRepresentativityErrorClosed : U.spatialRepresentativityError

def UncertaintyQuantificationClosed (U : UncertaintyQuantificationPackage) : Prop :=
  U.measurementErrorModel ∧ U.proxySystematicError ∧
  U.confidenceIntervalBootstrap ∧ U.spatialRepresentativityError

theorem uncertainty_quantification_closed_from_evidence
  (U : UncertaintyQuantificationPackage) (E : UncertaintyQuantificationEvidence U) :
  UncertaintyQuantificationClosed U := by
  exact And.intro E.measurementErrorModelClosed
    (And.intro E.proxySystematicErrorClosed
      (And.intro E.confidenceIntervalBootstrapClosed E.spatialRepresentativityErrorClosed))

end ClimateScienceTreeRingClimateTheoremCanonicalLaneLean
end HautevilleHouse