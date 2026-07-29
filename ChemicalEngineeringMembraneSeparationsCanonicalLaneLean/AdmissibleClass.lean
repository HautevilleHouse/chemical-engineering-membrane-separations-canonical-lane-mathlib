import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

structure MembraneAdmittedObject where
  membraneType : String
  transportProperties : Prop
  selectivityData : Prop
  conclusion : selectivityData

def MembraneWitnessClosed (O : MembraneAdmittedObject) : Prop :=
  O.selectivityData

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse