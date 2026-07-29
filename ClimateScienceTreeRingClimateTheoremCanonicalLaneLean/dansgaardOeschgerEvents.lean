import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceTreeRingClimateTheoremCanonicalLaneLean

structure DansgaardOeschgerEventsPackage where
  abruptWarmingEvents : Type u
  iceCoreRecord : Type v
  atlanticMeridionalOverturningCirculation : Type w
  eventFrequency : Prop
  amplitudePattern : Prop
  teleconnection : Prop

structure DansgaardOeschgerEventsEvidence (D : DansgaardOeschgerEventsPackage) where
  eventFrequencyClosed : D.eventFrequency
  amplitudePatternClosed : D.amplitudePattern
  teleconnectionClosed : D.teleconnection

def DansgaardOeschgerEventsClosed (D : DansgaardOeschgerEventsPackage) : Prop :=
  D.eventFrequency ∧ D.amplitudePattern ∧ D.teleconnection

theorem dansgaard_oeschger_events_closed_from_evidence
    (D : DansgaardOeschgerEventsPackage)
    (E : DansgaardOeschgerEventsEvidence D) : DansgaardOeschgerEventsClosed D := by
  exact And.intro E.eventFrequencyClosed
    (And.intro E.amplitudePatternClosed E.teleconnectionClosed)

end ClimateScienceTreeRingClimateTheoremCanonicalLaneLean
end HautevilleHouse
