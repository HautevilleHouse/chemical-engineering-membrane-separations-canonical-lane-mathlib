import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringMembraneSeparationsCanonicalLaneLean.SolutionDiffusionModel

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

structure ReverseOsmosisRejectionPackage {M : MembraneTransportPackage}
    (S : SolutionDiffusionPackage M) where
  rejectionCoefficient : Prop
  osmoticPressureEffect : Prop
  membraneFoulingResistance : Prop
  operatingConditionsInfluence : Prop
  rejectionCoefficientTerm : rejectionCoefficient
  osmoticPressureEffectTerm : osmoticPressureEffect
  membraneFoulingResistanceTerm : membraneFoulingResistance
  operatingConditionsInfluenceTerm : operatingConditionsInfluence

structure ReverseOsmosisRejectionEvidence {M : MembraneTransportPackage}
    {S : SolutionDiffusionPackage M} (R : ReverseOsmosisRejectionPackage S) where
  rejectionCoefficientClosed : R.rejectionCoefficient
  osmoticPressureEffectClosed : R.osmoticPressureEffect
  membraneFoulingResistanceClosed : R.membraneFoulingResistance
  operatingConditionsInfluenceClosed : R.operatingConditionsInfluence

def ReverseOsmosisRejectionClosed {M : MembraneTransportPackage}
    {S : SolutionDiffusionPackage M} (R : ReverseOsmosisRejectionPackage S) : Prop :=
  R.rejectionCoefficient ∧ R.osmoticPressureEffect ∧
  R.membraneFoulingResistance ∧ R.operatingConditionsInfluence

theorem reverse_osmosis_rejection_closed_from_evidence {M : MembraneTransportPackage}
    {S : SolutionDiffusionPackage M} (R : ReverseOsmosisRejectionPackage S)
    (E : ReverseOsmosisRejectionEvidence R) : ReverseOsmosisRejectionClosed R := by
  exact And.intro E.rejectionCoefficientClosed
    (And.intro E.osmoticPressureEffectClosed
      (And.intro E.membraneFoulingResistanceClosed E.operatingConditionsInfluenceClosed))

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse
