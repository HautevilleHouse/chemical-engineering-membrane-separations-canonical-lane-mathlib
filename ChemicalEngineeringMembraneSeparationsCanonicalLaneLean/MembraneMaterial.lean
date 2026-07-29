import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

structure MembraneMaterialPackage where
  polymerType : Type u
  permeability : Prop
  permselectivity : Prop
  chemicalStability : Prop
  mechanicalStrength : Prop

structure MembraneMaterialEvidence (M : MembraneMaterialPackage) where
  permeabilityClosed : M.permeability
  permselectivityClosed : M.permselectivity
  chemicalStabilityClosed : M.chemicalStability
  mechanicalStrengthClosed : M.mechanicalStrength

def MembraneMaterialClosed (M : MembraneMaterialPackage) : Prop :=
  M.permeability ∧ M.permselectivity ∧ M.chemicalStability ∧ M.mechanicalStrength

theorem membrane_material_closed_from_evidence (M : MembraneMaterialPackage)
    (E : MembraneMaterialEvidence M) : MembraneMaterialClosed M := by
  exact And.intro E.permeabilityClosed
    (And.intro E.permselectivityClosed
      (And.intro E.chemicalStabilityClosed E.mechanicalStrengthClosed))

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse
