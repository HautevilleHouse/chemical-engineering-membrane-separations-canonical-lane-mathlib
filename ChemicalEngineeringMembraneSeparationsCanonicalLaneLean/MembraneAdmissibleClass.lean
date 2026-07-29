import ChemicalEngineeringMembraneSeparationsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

structure MembraneAdmittedObject where
  feed : Type
  membrane : Type
  separationEfficiency : feed → membrane → Prop
  conclusion : separationEfficiency = (λ f m => True)

structure AdmissibleClass where
  object : MembraneAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse