import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

structure MappingPropertiesBridge where
  continuityPreserved : Prop
  compactnessPreserved : Prop
  connectednessPreserved : Prop

def MappingPropertiesClosed (B : MappingPropertiesBridge) : Prop :=
  B.continuityPreserved ∧ B.compactnessPreserved ∧ B.connectednessPreserved

theorem mapping_properties_closed_iff (B : MappingPropertiesBridge) :
    MappingPropertiesClosed B ↔ (B.continuityPreserved ∧ B.compactnessPreserved ∧ B.connectednessPreserved) :=
  by rfl

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse