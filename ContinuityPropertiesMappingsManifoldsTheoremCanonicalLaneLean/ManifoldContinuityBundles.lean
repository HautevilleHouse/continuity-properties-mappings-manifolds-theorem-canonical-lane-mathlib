import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

structure ManifoldContinuityBundlePackage where
  totalSpace : Type u
  baseManifold : Type v
  projection : totalSpace → baseManifold
  fiberType : baseManifold → Type w
  localTrivialization : Prop
  continuityTransitionFunctions : Prop
  fiberWiseContinuity : Prop

structure ManifoldContinuityBundleEvidence (B : ManifoldContinuityBundlePackage) where
  localTrivializationClosed : B.localTrivialization
  continuityTransitionFunctionsClosed : B.continuityTransitionFunctions
  fiberWiseContinuityClosed : B.fiberWiseContinuity

def ManifoldContinuityBundleClosed (B : ManifoldContinuityBundlePackage) : Prop :=
  B.localTrivialization ∧ B.continuityTransitionFunctions ∧ B.fiberWiseContinuity

theorem manifold_continuity_bundle_closed_from_evidence
    (B : ManifoldContinuityBundlePackage) (E : ManifoldContinuityBundleEvidence B) :
    ManifoldContinuityBundleClosed B := by
  exact And.intro E.localTrivializationClosed
    (And.intro E.continuityTransitionFunctionsClosed E.fiberWiseContinuityClosed)

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse