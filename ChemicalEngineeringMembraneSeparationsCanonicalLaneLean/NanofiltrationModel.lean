import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringMembraneSeparationsCanonicalLaneLean.ReverseOsmosisRejection

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

structure NanofiltrationModelPackage {M : MembraneTransportPackage}
    {S : SolutionDiffusionPackage M} (R : ReverseOsmosisRejectionPackage S) where
  poreSizeExclusion : Prop
  donnanExclusion : Prop
  dielectricExclusion : Prop
  transportNumber : Prop
  poreSizeExclusionTerm : poreSizeExclusion
  donnanExclusionTerm : donnanExclusion
  dielectricExclusionTerm : dielectricExclusion
  transportNumberTerm : transportNumber

structure NanofiltrationModelEvidence {M : MembraneTransportPackage}
    {S : SolutionDiffusionPackage M} {R : ReverseOsmosisRejectionPackage S}
    (N : NanofiltrationModelPackage R) where
  poreSizeExclusionClosed : N.poreSizeExclusion
  donnanExclusionClosed : N.donnanExclusion
  dielectricExclusionClosed : N.dielectricExclusion
  transportNumberClosed : N.transportNumber

def NanofiltrationModelClosed {M : MembraneTransportPackage}
    {S : SolutionDiffusionPackage M} {R : ReverseOsmosisRejectionPackage S}
    (N : NanofiltrationModelPackage R) : Prop :=
  N.poreSizeExclusion ∧ N.donnanExclusion ∧
  N.dielectricExclusion ∧ N.transportNumber

theorem nanofiltration_model_closed_from_evidence {M : MembraneTransportPackage}
    {S : SolutionDiffusionPackage M} {R : ReverseOsmosisRejectionPackage S}
    (N : NanofiltrationModelPackage R) (E : NanofiltrationModelEvidence N) :
    NanofiltrationModelClosed N := by
  exact And.intro E.poreSizeExclusionClosed
    (And.intro E.donnanExclusionClosed
      (And.intro E.dielectricExclusionClosed E.transportNumberClosed))

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse
