import ChemicalEngineeringMembraneSeparationsCanonicalLaneLean.SolutionDiffusionEvidence

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

structure PoreFlowPackage where
  poreGeometry : Prop
  knudsenDiffusion : Prop
  viscousFlow : Prop
  surfaceDiffusion : Prop
  molecularSieving : Prop

structure PoreFlowEvidence (P : PoreFlowPackage) where
  poreGeometryClosed : P.poreGeometry
  knudsenDiffusionClosed : P.knudsenDiffusion
  viscousFlowClosed : P.viscousFlow
  surfaceDiffusionClosed : P.surfaceDiffusion
  molecularSievingClosed : P.molecularSieving

def PoreFlowClosed (P : PoreFlowPackage) : Prop :=
  P.poreGeometry ∧ P.knudsenDiffusion ∧
  P.viscousFlow ∧ P.surfaceDiffusion ∧ P.molecularSieving

theorem pore_flow_closed_from_evidence (P : PoreFlowPackage)
    (E : PoreFlowEvidence P) : PoreFlowClosed P :=
  And.intro E.poreGeometryClosed
    (And.intro E.knudsenDiffusionClosed
      (And.intro E.viscousFlowClosed
        (And.intro E.surfaceDiffusionClosed E.molecularSievingClosed)))

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse