import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean.ContinuousMappingsPackage
import HautevilleHouse.ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean.MappingPropertiesBridge

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ContinuousMappingsClosed A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedContinuityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  by
    -- Assume A carries a continuous mapping package
    exact A.object.continuityCondition

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  by
    exact A.gateWitness

theorem constrained_continuity_endgame (A : AdmissibleClass) :
    ConstrainedContinuityClosure A :=
  by
    exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse