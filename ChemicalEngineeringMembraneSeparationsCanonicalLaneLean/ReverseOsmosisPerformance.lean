import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringMembraneSeparationsCanonicalLaneLean.SolutionDiffusionModel

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

structure ReverseOsmosisPerformancePackage {M : MembraneTransportPackage}
    {S : SolutionDiffusionModelPackage M} where
  saltRejection : ℝ
  waterFlux : ℝ
  recoveryRate : ℝ
  performanceCriterion : Prop

structure ReverseOsmosisPerformanceEvidence {M : MembraneTransportPackage}
    {S : SolutionDiffusionModelPackage M}
    (R : ReverseOsmosisPerformancePackage M S) where
  saltRejectionClosed : R.saltRejection ≥ 0.0
  waterFluxClosed : R.waterFlux > 0.0
  performanceCriterionClosed : R.performanceCriterion

def ReverseOsmosisPerformanceClosed {M : MembraneTransportPackage}
    {S : SolutionDiffusionModelPackage M}
    (R : ReverseOsmosisPerformancePackage M S) : Prop :=
  (R.saltRejection ≥ 0.0) ∧ (R.waterFlux > 0.0) ∧ R.performanceCriterion

theorem reverse_osmosis_performance_closed_from_evidence
    {M : MembraneTransportPackage} {S : SolutionDiffusionModelPackage M}
    (R : ReverseOsmosisPerformancePackage M S)
    (E : ReverseOsmosisPerformanceEvidence R) : ReverseOsmosisPerformanceClosed R := by
  exact And.intro E.saltRejectionClosed (And.intro E.waterFluxClosed E.performanceCriterionClosed)

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse