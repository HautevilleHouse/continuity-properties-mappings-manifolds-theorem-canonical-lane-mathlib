import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

structure HomeomorphismPackage where
  sourceManifold : Type u
  targetManifold : Type v
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  mapping : sourceManifold → targetManifold
  inverseMapping : targetManifold → sourceManifold
  bijectivityCondition : Prop
  continuityForward : Prop
  continuityInverse : Prop
  homeomorphismEstablished : Prop

def HomeomorphismEvidence (H : HomeomorphismPackage) where
  continuityForwardClosed : H.continuityForward
  continuityInverseClosed : H.continuityInverse
  bijectivityConditionClosed : H.bijectivityCondition
  homeomorphismEstablishedClosed : H.homeomorphismEstablished

def HomeomorphismClosed (H : HomeomorphismPackage) : Prop :=
  H.continuityForward ∧ H.continuityInverse ∧ H.bijectivityCondition ∧ H.homeomorphismEstablished

theorem homeomorphism_closed_from_evidence (H : HomeomorphismPackage)
    (E : HomeomorphismEvidence H) : HomeomorphismClosed H := by
  exact And.intro E.continuityForwardClosed
    (And.intro E.continuityInverseClosed
      (And.intro E.bijectivityConditionClosed E.homeomorphismEstablishedClosed))

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse