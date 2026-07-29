import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

structure HagenPoiseuillePoreFlow where
  poreRadius : Prop
  membraneThickness : Prop
  dynamicViscosity : Prop
  pressureDrop : Prop
  volumetricFlux : Prop

def HagenPoiseuillePoreFlowClosed (H : HagenPoiseuillePoreFlow) : Prop :=
  H.poreRadius ∧ H.membraneThickness ∧ H.dynamicViscosity ∧ H.pressureDrop ∧ H.volumetricFlux

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse