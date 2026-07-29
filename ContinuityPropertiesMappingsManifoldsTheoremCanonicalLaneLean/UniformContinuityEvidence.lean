import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

structure UniformContinuityEvidence where
  uniformContinuityHolds : Prop
  uniformModulusExists : Prop
  uniformContinuityHoldsClosed : uniformContinuityHolds
  uniformModulusExistsClosed : uniformModulusExists

def UniformContinuityClosed (E : UniformContinuityEvidence) : Prop :=
  E.uniformContinuityHolds ∧ E.uniformModulusExists

theorem uniform_continuity_closed_from_evidence (E : UniformContinuityEvidence) :
    UniformContinuityClosed E := by
  exact And.intro E.uniformContinuityHoldsClosed E.uniformModulusExistsClosed

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse