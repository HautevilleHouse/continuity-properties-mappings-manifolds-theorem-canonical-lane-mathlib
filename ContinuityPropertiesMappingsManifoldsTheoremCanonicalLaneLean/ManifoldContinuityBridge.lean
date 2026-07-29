import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∃ (M : (A.object).carrier) (N : Type) [TopologicalSpace N] (f : M → N),
    Continuous f

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- Assume object has some continuous function
  exact ⟨(A.object).carrier, (A.object).carrier, inferInstance, id, continuous_id⟩

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse