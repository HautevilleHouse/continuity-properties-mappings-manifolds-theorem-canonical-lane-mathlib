import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

structure ContinuousMappingsPackage where
  sourceManifold : Type u
  targetManifold : Type v
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  mappingFamily : sourceManifold → targetManifold
  continuityCondition : Prop
  uniformContinuityCondition : Prop
  lipschitzContinuityCondition : Prop

def ContinuousMappingsClosed (M : ContinuousMappingsPackage) : Prop :=
  M.continuityCondition ∧ M.uniformContinuityCondition ∧ M.lipschitzContinuityCondition

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse