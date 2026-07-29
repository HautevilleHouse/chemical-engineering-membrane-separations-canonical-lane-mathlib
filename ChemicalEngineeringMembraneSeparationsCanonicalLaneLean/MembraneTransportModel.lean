import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

structure MembraneTransportModel where
  membraneMaterial : Type u
  feedComposition : Type v
  permeateComposition : Type w
  drivingForce : Prop
  fluxEquation : Prop
  selectivityExpression : Prop

def MembraneTransportModelClosed (M : MembraneTransportModel) : Prop :=
  M.drivingForce ∧ M.fluxEquation ∧ M.selectivityExpression

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse