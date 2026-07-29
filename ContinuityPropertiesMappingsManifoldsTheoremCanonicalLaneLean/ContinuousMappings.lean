import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

structure ContinuousMappingPackage where
  sourceManifold : Type u
  targetManifold : Type v
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  mapping : sourceManifold → targetManifold
  continuityCondition : Prop
  fiberWiseRegularity : Prop
  mappingRespectsAtlas : Prop

structure ContinuousMappingEvidence (C : ContinuousMappingPackage) where
  continuityConditionClosed : C.continuityCondition
  fiberWiseRegularityClosed : C.fiberWiseRegularity
  mappingRespectsAtlasClosed : C.mappingRespectsAtlas

def ContinuousMappingClosed (C : ContinuousMappingPackage) : Prop :=
  C.continuityCondition ∧ C.fiberWiseRegularity ∧ C.mappingRespectsAtlas

theorem continuous_mapping_closed_from_evidence (C : ContinuousMappingPackage)
    (E : ContinuousMappingEvidence C) : ContinuousMappingClosed C := by
  exact And.intro E.continuityConditionClosed
    (And.intro E.fiberWiseRegularityClosed E.mappingRespectsAtlasClosed)

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse