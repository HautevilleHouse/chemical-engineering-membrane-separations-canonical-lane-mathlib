import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

structure MembraneTransportPackage where
  feedComposition : Type u
  permeateComposition : Type v
  drivingForce : Prop
  transportModel : Prop
  selectivityDefinition : Prop
  fluxEquation : Prop

structure MembraneTransportEvidence (M : MembraneTransportPackage) where
  drivingForceClosed : M.drivingForce
  transportModelClosed : M.transportModel
  selectivityDefinitionClosed : M.selectivityDefinition
  fluxEquationClosed : M.fluxEquation

def MembraneTransportClosed (M : MembraneTransportPackage) : Prop :=
  M.drivingForce ∧ M.transportModel ∧ M.selectivityDefinition ∧ M.fluxEquation

theorem membrane_transport_closed_from_evidence (M : MembraneTransportPackage)
    (E : MembraneTransportEvidence M) : MembraneTransportClosed M := by
  exact And.intro E.drivingForceClosed
    (And.intro E.transportModelClosed
      (And.intro E.selectivityDefinitionClosed E.fluxEquationClosed))

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse
