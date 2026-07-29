import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

structure MembraneTransportPackage where
  membraneThickness : ℝ
  permeability : ℝ
  diffusivity : ℝ
  solubility : ℝ
  drivingForce : ℝ
  fluxEquation : Prop

structure MembraneTransportEvidence (M : MembraneTransportPackage) where
  fluxEquationClosed : M.fluxEquation

def MembraneTransportClosed (M : MembraneTransportPackage) : Prop :=
  M.fluxEquation

theorem membrane_transport_closed_from_evidence (M : MembraneTransportPackage)
    (E : MembraneTransportEvidence M) : MembraneTransportClosed M := by
  exact E.fluxEquationClosed

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse