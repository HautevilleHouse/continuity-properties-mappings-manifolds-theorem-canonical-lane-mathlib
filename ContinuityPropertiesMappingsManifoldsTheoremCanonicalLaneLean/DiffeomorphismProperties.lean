import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

structure DiffeomorphismPackage where
  sourceManifold : Type u
  targetManifold : Type v
  sourceSmoothStructure : Type s
  targetSmoothStructure : Type t
  mapping : sourceManifold → targetManifold
  inverseMapping : targetManifold → sourceManifold
  smoothForward : Prop
  smoothInverse : Prop
  bijectivityCondition : Prop
  diffeomorphismEstablished : Prop

def DiffeomorphismEvidence (D : DiffeomorphismPackage) where
  smoothForwardClosed : D.smoothForward
  smoothInverseClosed : D.smoothInverse
  bijectivityConditionClosed : D.bijectivityCondition
  diffeomorphismEstablishedClosed : D.diffeomorphismEstablished

def DiffeomorphismClosed (D : DiffeomorphismPackage) : Prop :=
  D.smoothForward ∧ D.smoothInverse ∧ D.bijectivityCondition ∧ D.diffeomorphismEstablished

theorem diffeomorphism_closed_from_evidence (D : DiffeomorphismPackage)
    (E : DiffeomorphismEvidence D) : DiffeomorphismClosed D := by
  exact And.intro E.smoothForwardClosed
    (And.intro E.smoothInverseClosed
      (And.intro E.bijectivityConditionClosed E.diffeomorphismEstablishedClosed))

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse