import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

structure SmoothMappingPackage where
  sourceManifold : Type u
  targetManifold : Type v
  sourceSmoothStructure : SmoothManifoldWithCorners? sourceManifold
  targetSmoothStructure : SmoothManifoldWithCorners? targetManifold
  mapping : sourceManifold → targetManifold
  smoothnessClass : ℕ∞
  differentialExists : Prop
  chainRuleCompatibility : Prop

structure SmoothMappingEvidence (S : SmoothMappingPackage) where
  smoothnessClassClosed : S.smoothnessClass = ⊤
  differentialExistsClosed : S.differentialExists
  chainRuleCompatibilityClosed : S.chainRuleCompatibility

def SmoothMappingClosed (S : SmoothMappingPackage) : Prop :=
  S.differentialExists ∧ S.chainRuleCompatibility

theorem smooth_mapping_closed_from_evidence (S : SmoothMappingPackage)
    (E : SmoothMappingEvidence S) : SmoothMappingClosed S := by
  exact And.intro E.differentialExistsClosed E.chainRuleCompatibilityClosed

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse