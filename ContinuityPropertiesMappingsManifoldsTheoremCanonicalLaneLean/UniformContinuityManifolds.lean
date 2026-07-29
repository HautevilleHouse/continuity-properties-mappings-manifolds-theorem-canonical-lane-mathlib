import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

structure UniformContinuityManifoldsPackage where
  sourceManifold : Type u
  targetManifold : Type v
  sourceMetric : MetricSpace sourceManifold
  targetMetric : MetricSpace targetManifold
  mapping : sourceManifold → targetManifold
  uniformlyContinuous : Prop
  lipschitzConstant : ℝ
  locallyLipschitz : Prop

structure UniformContinuityManifoldsEvidence (U : UniformContinuityManifoldsPackage) where
  uniformlyContinuousClosed : U.uniformlyContinuous
  lipschitzConstantClosed : U.lipschitzConstant > 0
  locallyLipschitzClosed : U.locallyLipschitz

def UniformContinuityManifoldsClosed (U : UniformContinuityManifoldsPackage) : Prop :=
  U.uniformlyContinuous ∧ U.locallyLipschitz

theorem uniform_continuity_manifolds_closed_from_evidence
    (U : UniformContinuityManifoldsPackage) (E : UniformContinuityManifoldsEvidence U) :
    UniformContinuityManifoldsClosed U := by
  exact And.intro E.uniformlyContinuousClosed E.locallyLipschitzClosed

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse