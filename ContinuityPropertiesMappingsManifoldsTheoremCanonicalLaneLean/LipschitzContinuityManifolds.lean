import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

structure LipschitzContinuityPackage where
  sourceManifold : Type u
  targetManifold : Type v
  sourceMetric : sourceManifold → sourceManifold → ℝ
  targetMetric : targetManifold → targetManifold → ℝ
  mapping : sourceManifold → targetManifold
  lipschitzConstant : ℝ
  lipschitzCondition : Prop
  lipschitzContinuityHolds : Prop

def LipschitzContinuityEvidence (L : LipschitzContinuityPackage) where
  lipschitzConditionClosed : L.lipschitzCondition
  lipschitzContinuityHoldsClosed : L.lipschitzContinuityHolds

def LipschitzContinuityClosed (L : LipschitzContinuityPackage) : Prop :=
  L.lipschitzCondition ∧ L.lipschitzContinuityHolds

theorem lipschitz_continuity_closed_from_evidence (L : LipschitzContinuityPackage)
    (E : LipschitzContinuityEvidence L) : LipschitzContinuityClosed L := by
  exact And.intro E.lipschitzConditionClosed E.lipschitzContinuityHoldsClosed

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse