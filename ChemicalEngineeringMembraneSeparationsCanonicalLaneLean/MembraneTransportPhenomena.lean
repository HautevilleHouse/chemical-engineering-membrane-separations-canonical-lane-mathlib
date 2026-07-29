import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

structure MembraneTransportPackage where
  feedSideComposition : Type u
  permeateSideComposition : Type v
  concentrationProfile : Type w
  pressureDrivingForce : Prop
  solutionDiffusionModel : Prop
  concentrationProfileContinuous : Prop
  pressureDrivingForceTerm : pressureDrivingForce
  solutionDiffusionModelTerm : solutionDiffusionModel
  concentrationProfileContinuousTerm : concentrationProfileContinuous

structure MembraneTransportEvidence (M : MembraneTransportPackage) where
  pressureDrivingForceClosed : M.pressureDrivingForce
  solutionDiffusionModelClosed : M.solutionDiffusionModel
  concentrationProfileContinuousClosed : M.concentrationProfileContinuous

def MembraneTransportClosed (M : MembraneTransportPackage) : Prop :=
  M.pressureDrivingForce ∧ M.solutionDiffusionModel ∧ M.concentrationProfileContinuous

theorem membrane_transport_closed_from_evidence (M : MembraneTransportPackage)
    (E : MembraneTransportEvidence M) : MembraneTransportClosed M := by
  exact And.intro E.pressureDrivingForceClosed
    (And.intro E.solutionDiffusionModelClosed E.concentrationProfileContinuousClosed)

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse
