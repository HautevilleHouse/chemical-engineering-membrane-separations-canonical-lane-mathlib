import ChemicalEngineeringMembraneSeparationsCanonicalLaneLean.PermeabilityGate

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

structure SolutionDiffusionPackage where
  permeabilityCoefficient : Prop
  diffusivityCoefficient : Prop
  sorptionIsotherm : Prop
  fluxEquation : Prop
  concentrationProfile : Prop

structure SolutionDiffusionEvidence (S : SolutionDiffusionPackage) where
  permeabilityCoefficientClosed : S.permeabilityCoefficient
  diffusivityCoefficientClosed : S.diffusivityCoefficient
  sorptionIsothermClosed : S.sorptionIsotherm
  fluxEquationClosed : S.fluxEquation
  concentrationProfileClosed : S.concentrationProfile

def SolutionDiffusionClosed (S : SolutionDiffusionPackage) : Prop :=
  S.permeabilityCoefficient ∧ S.diffusivityCoefficient ∧
  S.sorptionIsotherm ∧ S.fluxEquation ∧ S.concentrationProfile

theorem solution_diffusion_closed_from_evidence (S : SolutionDiffusionPackage)
    (E : SolutionDiffusionEvidence S) : SolutionDiffusionClosed S :=
  And.intro E.permeabilityCoefficientClosed
    (And.intro E.diffusivityCoefficientClosed
      (And.intro E.sorptionIsothermClosed
        (And.intro E.fluxEquationClosed E.concentrationProfileClosed)))

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse