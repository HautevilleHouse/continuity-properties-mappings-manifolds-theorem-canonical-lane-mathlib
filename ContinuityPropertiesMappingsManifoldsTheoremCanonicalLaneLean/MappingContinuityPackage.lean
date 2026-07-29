import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

structure MappingContinuityPackage where
  sourceManifold : Type u
  targetManifold : Type v
  topologySource : TopologicalSpace sourceManifold
  topologyTarget : TopologicalSpace targetManifold
  mapping : sourceManifold → targetManifold
  continuityHolds : Prop
  localContinuity : Prop
  uniformContinuity : Prop

def MappingContinuityClosed (M : MappingContinuityPackage) : Prop :=
  M.continuityHolds ∧ M.localContinuity ∧ M.uniformContinuity

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse