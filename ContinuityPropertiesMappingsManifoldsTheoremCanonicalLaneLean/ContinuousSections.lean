import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

structure ContinuousSectionsPackage where
  bundle : BundleContinuityPackage
  sectionMap : bundle.totalSpace -> bundle.baseManifold
  sectionContinuity : Prop
  localSectionCompatibility : Prop
  admissibleClassLink : Prop

def ContinuousSectionsClosed (S : ContinuousSectionsPackage) : Prop :=
  S.sectionContinuity ∧ S.localSectionCompatibility ∧ S.admissibleClassLink

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse