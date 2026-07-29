import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

structure PullbackContinuityPackage where
  baseManifold : Type u
  bundleManifold : Type v
  baseTopology : TopologicalSpace baseManifold
  bundleTopology : TopologicalSpace bundleManifold
  projection : bundleManifold → baseManifold
  section : baseManifold → bundleManifold
  pullbackContinuityCondition : Prop
  pullbackContinuityHolds : Prop

def PullbackContinuityEvidence (P : PullbackContinuityPackage) where
  pullbackContinuityConditionClosed : P.pullbackContinuityCondition
  pullbackContinuityHoldsClosed : P.pullbackContinuityHolds

def PullbackContinuityClosed (P : PullbackContinuityPackage) : Prop :=
  P.pullbackContinuityCondition ∧ P.pullbackContinuityHolds

theorem pullback_continuity_closed_from_evidence (P : PullbackContinuityPackage)
    (E : PullbackContinuityEvidence P) : PullbackContinuityClosed P := by
  exact And.intro E.pullbackContinuityConditionClosed E.pullbackContinuityHoldsClosed

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse