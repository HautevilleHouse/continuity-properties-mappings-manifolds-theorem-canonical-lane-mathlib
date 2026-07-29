import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

structure TopologicalContinuityPackage where
  sourceManifold : Type u
  targetManifold : Type v
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  mapping : sourceManifold → targetManifold
  openPreimageCondition : Prop
  continuityPreserved : Prop
  mappingContinuous : Prop

structure TopologicalContinuityEvidence (T : TopologicalContinuityPackage) where
  openPreimageConditionClosed : T.openPreimageCondition
  continuityPreservedClosed : T.continuityPreserved
  mappingContinuousClosed : T.mappingContinuous

def TopologicalContinuityClosed (T : TopologicalContinuityPackage) : Prop :=
  T.openPreimageCondition ∧ T.continuityPreserved ∧ T.mappingContinuous

theorem topological_continuity_closed_from_evidence (T : TopologicalContinuityPackage)
    (E : TopologicalContinuityEvidence T) : TopologicalContinuityClosed T := by
  exact And.intro E.openPreimageConditionClosed
    (And.intro E.continuityPreservedClosed E.mappingContinuousClosed)

structure TopologicalContinuityAdmissibleObject where
  space : TopologicalContinuityPackage
  evidence : TopologicalContinuityEvidence space
  closedCondition : TopologicalContinuityClosed space
  closedConditionTerm : closedCondition

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse