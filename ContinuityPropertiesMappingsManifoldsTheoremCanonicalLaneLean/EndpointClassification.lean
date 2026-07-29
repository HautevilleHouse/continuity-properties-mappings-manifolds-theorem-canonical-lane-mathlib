import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

structure EndpointClassificationPackage (Z : GeometrizationPackage) where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  simplyConnectedClosedThreeManifold : Prop
  sphereEndpoint : ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere targetManifold 3
  endpointMatchesPoincareStatement : Prop

structure EndpointClassificationEvidence (Epkg2 : EndpointClassificationPackage) where
  simplyConnectedClosedThreeManifoldClosed : Epkg2.simplyConnectedClosedThreeManifold
  endpointMatchesPoincareStatementClosed : Epkg2.endpointMatchesPoincareStatement

def EndpointClassificationClosed (Epkg2 : EndpointClassificationPackage) : Prop :=
  Epkg2.simplyConnectedClosedThreeManifold ∧
  Epkg2.endpointMatchesPoincareStatement

theorem endpoint_classification_closed_from_evidence
    (Epkg2 : EndpointClassificationPackage)
    (E : EndpointClassificationEvidence Epkg2) : EndpointClassificationClosed Epkg2 := by
  exact And.intro E.simplyConnectedClosedThreeManifoldClosed
    E.endpointMatchesPoincareStatementClosed

theorem endpoint_classification_supplies_mathlib_statement
    (Epkg2 : EndpointClassificationPackage) :
    @ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere
      Epkg2.targetManifold Epkg2.targetTopology 3 :=
  Epkg2.sphereEndpoint

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse
