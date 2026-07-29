import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringMembraneSeparationsCanonicalLaneLean.MembraneTransportPackage

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

structure SolutionDiffusionModelPackage {M : MembraneTransportPackage} where
  sorptionIsotherm : Prop
  diffusionCoefficientConcentrationDependence : Prop
  pressureDrivenFlow : Prop

structure SolutionDiffusionModelEvidence {M : MembraneTransportPackage}
    (S : SolutionDiffusionModelPackage M) where
  sorptionIsothermClosed : S.sorptionIsotherm
  diffusionCoefficientConcentrationDependenceClosed : S.diffusionCoefficientConcentrationDependence
  pressureDrivenFlowClosed : S.pressureDrivenFlow

def SolutionDiffusionModelClosed {M : MembraneTransportPackage}
    (S : SolutionDiffusionModelPackage M) : Prop :=
  S.sorptionIsotherm ∧ S.diffusionCoefficientConcentrationDependence ∧ S.pressureDrivenFlow

theorem solution_diffusion_model_closed_from_evidence
    {M : MembraneTransportPackage} (S : SolutionDiffusionModelPackage M)
    (E : SolutionDiffusionModelEvidence S) : SolutionDiffusionModelClosed S := by
  exact And.intro E.sorptionIsothermClosed
    (And.intro E.diffusionCoefficientConcentrationDependenceClosed
      E.pressureDrivenFlowClosed)

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse