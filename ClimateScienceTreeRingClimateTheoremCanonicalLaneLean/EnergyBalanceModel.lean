import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateTheoremCanonicalLaneLean

structure EnergyBalanceModel where
  solarConstant : ℝ
  albedo : ℝ
  emissivity : ℝ
  greenhouseParameter : ℝ
  equilibriumTemperature : ℝ
  radiativeForcing : ℝ
  sensitivity : ℝ
  solarConstantClosed : solarConstant > 0
  albedoClosed : 0 ≤ albedo ∧ albedo ≤ 1
  emissivityClosed : 0 < emissivity ∧ emissivity ≤ 1
  greenhouseParameterClosed : greenhouseParameter ≥ 0
  equilibriumTemperatureClosed : equilibriumTemperature = ((solarConstant * (1 - albedo)) / (4 * emissivity * greenhouseParameter))^(1/4 : ℝ)
  radiativeForcingClosed : radiativeForcing = solarConstant * (1 - albedo) / 4 - emissivity * greenhouseParameter * equilibriumTemperature^4
  sensitivityClosed : sensitivity = equilibriumTemperature / radiativeForcing

structure EnergyBalanceEvidence (M : EnergyBalanceModel) where
  solarConstantClosed : M.solarConstantClosed
  albedoClosed : M.albedoClosed
  emissivityClosed : M.emissivityClosed
  greenhouseParameterClosed : M.greenhouseParameterClosed
  equilibriumTemperatureClosed : M.equilibriumTemperatureClosed
  radiativeForcingClosed : M.radiativeForcingClosed
  sensitivityClosed : M.sensitivityClosed

def EnergyBalanceModelClosed (M : EnergyBalanceModel) : Prop :=
  M.solarConstantClosed ∧ M.albedoClosed ∧ M.emissivityClosed ∧
  M.greenhouseParameterClosed ∧ M.equilibriumTemperatureClosed ∧
  M.radiativeForcingClosed ∧ M.sensitivityClosed

theorem energy_balance_model_closed_from_evidence (M : EnergyBalanceModel) (E : EnergyBalanceEvidence M) :
    EnergyBalanceModelClosed M := by
  exact And.intro E.solarConstantClosed
    (And.intro E.albedoClosed
      (And.intro E.emissivityClosed
        (And.intro E.greenhouseParameterClosed
          (And.intro E.equilibriumTemperatureClosed
            (And.intro E.radiativeForcingClosed E.sensitivityClosed)))))

end ClimateScienceTreeRingClimateTheoremCanonicalLaneLean
end HautevilleHouse