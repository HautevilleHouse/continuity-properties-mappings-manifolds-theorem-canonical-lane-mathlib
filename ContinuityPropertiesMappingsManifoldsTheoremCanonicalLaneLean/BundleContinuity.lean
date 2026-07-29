import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean

structure BundleContinuityPackage where
  baseManifold : Type u
  baseTopology : TopologicalSpace baseManifold
  fiberType : Type v
  fiberTopology : TopologicalSpace fiberType
  totalSpace : Type w
  projectionMap : totalSpace -> baseManifold
  projectionContinuous : Prop
  trivializingCharts : Prop
  chartContinuity : Prop

def BundleContinuityClosed (B : BundleContinuityPackage) : Prop :=
  B.projectionContinuous ∧ B.trivializingCharts ∧ B.chartContinuity

end ContinuityPropertiesMappingsManifoldsTheoremCanonicalLaneLean
end HautevilleHouse