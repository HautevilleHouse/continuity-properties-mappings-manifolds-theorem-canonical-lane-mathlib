import canonicalLaneMathlib.AdmissibleClass
import ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean.ContinuityBridge
import ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean.ContinuityGate

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

def ConstrainedContinuityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem continuity_endgame (A : AdmissibleClass) : ConstrainedContinuityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse