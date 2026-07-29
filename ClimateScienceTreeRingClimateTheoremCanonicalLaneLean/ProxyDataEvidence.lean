import ClimateScienceTreeRingClimateTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateTheoremCanonicalLaneLean

structure ProxyDataPackage where
  treeRingChronology : Type
  isotopeRatio : Type
  temperatureReconstruction : Prop
  growthModel : Prop

def ProxyDataClosed (P : ProxyDataPackage) : Prop :=
  P.temperatureReconstruction ∧ P.growthModel

theorem proxy_data_evidence (P : ProxyDataPackage) (temp : P.temperatureReconstruction) (growth : P.growthModel) :
    ProxyDataClosed P := by
  exact And.intro temp growth

end ClimateScienceTreeRingClimateTheoremCanonicalLaneLean
end HautevilleHouse