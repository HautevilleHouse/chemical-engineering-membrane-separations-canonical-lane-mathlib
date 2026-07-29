import ChemicalEngineeringMembraneSeparationsCanonicalLaneLean.TransportMechanisms

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

structure MembraneMaterialsPackage {T : TransportMechanismsPackage} where
  polymeric : Prop
  ceramic : Prop
  metallic : Prop
  mixedMatrix : Prop

structure MembraneMaterialsEvidence {T : TransportMechanismsPackage} (M : MembraneMaterialsPackage T) where
  polymericClosed : M.polymeric
  ceramicClosed : M.ceramic
  metallicClosed : M.metallic
  mixedMatrixClosed : M.mixedMatrix

def MembraneMaterialsClosed {T : TransportMechanismsPackage} (M : MembraneMaterialsPackage T) : Prop :=
  M.polymeric ∧ M.ceramic ∧ M.metallic ∧ M.mixedMatrix

theorem membrane_materials_closed_from_evidence {T : TransportMechanismsPackage} (M : MembraneMaterialsPackage T) (E : MembraneMaterialsEvidence M) :
    MembraneMaterialsClosed M := by
  exact And.intro E.polymericClosed (And.intro E.ceramicClosed (And.intro E.metallicClosed E.mixedMatrixClosed))

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse