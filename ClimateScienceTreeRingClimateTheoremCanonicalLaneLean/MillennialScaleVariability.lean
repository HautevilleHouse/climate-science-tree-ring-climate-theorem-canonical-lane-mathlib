import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateTheoremCanonicalLaneLean

structure MultidecadalToCentennialVariabilityPackage where
  redNoiseBackground : Prop
  spectralPeaksIdentified : Prop
  amplitudeModulation : Prop
  phaseCoherence : Prop
  periodBand : ℝ
  redNoiseBackgroundTerm : redNoiseBackground
  spectralPeaksIdentifiedTerm : spectralPeaksIdentified
  amplitudeModulationTerm : amplitudeModulation
  phaseCoherenceTerm : phaseCoherence

structure MultidecadalToCentennialVariabilityEvidence
  (V : MultidecadalToCentennialVariabilityPackage) where
  redNoiseBackgroundClosed : V.redNoiseBackground
  spectralPeaksIdentifiedClosed : V.spectralPeaksIdentified
  amplitudeModulationClosed : V.amplitudeModulation
  phaseCoherenceClosed : V.phaseCoherence

def MultidecadalToCentennialVariabilityClosed (V : MultidecadalToCentennialVariabilityPackage) : Prop :=
  V.redNoiseBackground ∧ V.spectralPeaksIdentified ∧ V.amplitudeModulation ∧ V.phaseCoherence

theorem multidecadal_to_centennial_variability_closed_from_evidence
  (V : MultidecadalToCentennialVariabilityPackage) (E : MultidecadalToCentennialVariabilityEvidence V) :
  MultidecadalToCentennialVariabilityClosed V := by
  exact And.intro E.redNoiseBackgroundClosed
    (And.intro E.spectralPeaksIdentifiedClosed
      (And.intro E.amplitudeModulationClosed E.phaseCoherenceClosed))

end ClimateScienceTreeRingClimateTheoremCanonicalLaneLean
end HautevilleHouse