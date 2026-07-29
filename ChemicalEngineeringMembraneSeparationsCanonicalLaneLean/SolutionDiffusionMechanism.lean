import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringMembraneSeparationsCanonicalLaneLean.MembraneTransportModel

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

structure SolutionDiffusionPackage (M : MembraneTransportModel) where
  sorptionCoefficient : Prop
  diffusionCoefficient : Prop
  permeabilityCoefficient : Prop
  threeStepTransport : Prop

structure SolutionDiffusionEvidence {M : MembraneTransportModel} (S : SolutionDiffusionPackage M) where
  sorptionCoefficientClosed : S.sorptionCoefficient
  diffusionCoefficientClosed : S.diffusionCoefficient
  permeabilityCoefficientClosed : S.permeabilityCoefficient
  threeStepTransportClosed : S.threeStepTransport

def SolutionDiffusionClosed {M : MembraneTransportModel} (S : SolutionDiffusionPackage M) : Prop :=
  S.sorptionCoefficient ∧ S.diffusionCoefficient ∧ S.permeabilityCoefficient ∧ S.threeStepTransport

theorem solution_diffusion_closed_from_evidence {M : MembraneTransportModel}
    (S : SolutionDiffusionPackage M) (E : SolutionDiffusionEvidence S) :
    SolutionDiffusionClosed S := by
  exact And.intro E.sorptionCoefficientClosed
    (And.intro E.diffusionCoefficientClosed
      (And.intro E.permeabilityCoefficientClosed E.threeStepTransportClosed))

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse