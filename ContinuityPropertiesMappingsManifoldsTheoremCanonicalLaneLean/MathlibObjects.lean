import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

structure ContinuityMappingsManifoldsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ContinuityMappingsManifoldsAdmittedObject where
  space : ContinuityMappingsManifoldsSpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure ContinuityMappingsManifoldsEndgameState where
  object : ContinuityMappingsManifoldsAdmittedObject

def ContinuityMappingsManifoldsWitnessClosed (O : ContinuityMappingsManifoldsAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse
