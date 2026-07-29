import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

structure MappingsManifoldsAdmissibleClass where
  object : AdmissibleClass
  mappingContinuitySatisfied : Prop
  remainderRecorded : Prop
  gateWitness : mappingContinuitySatisfied ∨ remainderRecorded

def admittedClosure (A : MappingsManifoldsAdmissibleClass) : Prop :=
  bridgeClosed A.object ∧ (A.mappingContinuitySatisfied ∨ A.remainderRecorded)

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse