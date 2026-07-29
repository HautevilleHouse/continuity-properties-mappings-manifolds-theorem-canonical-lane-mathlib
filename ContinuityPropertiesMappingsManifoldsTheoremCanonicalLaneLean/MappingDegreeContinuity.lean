import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

structure MappingDegreeContinuityPackage where
  sourceManifold : Type u
  targetManifold : Type v
  sourceCompact : Prop
  targetConnected : Prop
  mapping : sourceManifold → targetManifold
  degreeDefined : Prop
  continuityImpliesDegreeConstant : Prop
  homotopyInvariance : Prop

structure MappingDegreeContinuityEvidence (D : MappingDegreeContinuityPackage) where
  degreeDefinedClosed : D.degreeDefined
  continuityImpliesDegreeConstantClosed : D.continuityImpliesDegreeConstant
  homotopyInvarianceClosed : D.homotopyInvariance

def MappingDegreeContinuityClosed (D : MappingDegreeContinuityPackage) : Prop :=
  D.degreeDefined ∧ D.continuityImpliesDegreeConstant ∧ D.homotopyInvariance

theorem mapping_degree_continuity_closed_from_evidence
    (D : MappingDegreeContinuityPackage) (E : MappingDegreeContinuityEvidence D) :
    MappingDegreeContinuityClosed D := by
  exact And.intro E.degreeDefinedClosed
    (And.intro E.continuityImpliesDegreeConstantClosed E.homotopyInvarianceClosed)

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse