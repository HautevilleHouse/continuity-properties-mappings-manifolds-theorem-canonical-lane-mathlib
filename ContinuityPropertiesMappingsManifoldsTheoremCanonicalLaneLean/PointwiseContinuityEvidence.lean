import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

structure PointwiseContinuityEvidence where
  continuityAtAllPoints : Prop
  limitPreservation : Prop
  epsilonDeltaCondition : Prop
  continuityAtAllPointsClosed : continuityAtAllPoints
  limitPreservationClosed : limitPreservation
  epsilonDeltaConditionClosed : epsilonDeltaCondition

def PointwiseContinuityClosed (E : PointwiseContinuityEvidence) : Prop :=
  E.continuityAtAllPoints ∧ E.limitPreservation ∧ E.epsilonDeltaCondition

theorem pointwise_continuity_closed_from_evidence (E : PointwiseContinuityEvidence) :
    PointwiseContinuityClosed E := by
  exact And.intro E.continuityAtAllPointsClosed
    (And.intro E.limitPreservationClosed E.epsilonDeltaConditionClosed)

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse