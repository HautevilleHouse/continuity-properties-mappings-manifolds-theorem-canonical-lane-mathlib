import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

structure FunctionSpaceTopologyPackage where
  sourceManifold : Type u
  targetManifold : Type v
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  functionSpace : Set (sourceManifold → targetManifold)
  compactOpenTopology : TopologicalSpace (sourceManifold → targetManifold)
  uniformConvergenceCompacta : Prop
  equicontinuityCondition : Prop

structure FunctionSpaceTopologyEvidence (F : FunctionSpaceTopologyPackage) where
  compactOpenTopologyClosed : F.compactOpenTopology = inferInstance
  uniformConvergenceCompactaClosed : F.uniformConvergenceCompacta
  equicontinuityConditionClosed : F.equicontinuityCondition

def FunctionSpaceTopologyClosed (F : FunctionSpaceTopologyPackage) : Prop :=
  F.uniformConvergenceCompacta ∧ F.equicontinuityCondition

theorem function_space_topology_closed_from_evidence (F : FunctionSpaceTopologyPackage)
    (E : FunctionSpaceTopologyEvidence F) : FunctionSpaceTopologyClosed F := by
  exact And.intro E.uniformConvergenceCompactaClosed E.equicontinuityConditionClosed

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse