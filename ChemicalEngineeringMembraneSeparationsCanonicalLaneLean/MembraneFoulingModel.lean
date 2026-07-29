import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringMembraneSeparationsCanonicalLaneLean.ConcentrationPolarization

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

structure MembraneFoulingPackage {C : ConcentrationPolarizationPackage} where
  poreBlockingMechanism : Prop
  cakeLayerFormation : Prop
  irreversibleFluxLoss : Prop
  cleaningEfficiency : Prop

structure MembraneFoulingEvidence {C : ConcentrationPolarizationPackage} (F : MembraneFoulingPackage C) where
  poreBlockingMechanismClosed : F.poreBlockingMechanism
  cakeLayerFormationClosed : F.cakeLayerFormation
  irreversibleFluxLossClosed : F.irreversibleFluxLoss
  cleaningEfficiencyClosed : F.cleaningEfficiency

def MembraneFoulingClosed {C : ConcentrationPolarizationPackage} (F : MembraneFoulingPackage C) : Prop :=
  F.poreBlockingMechanism ∧ F.cakeLayerFormation ∧ F.irreversibleFluxLoss ∧ F.cleaningEfficiency

theorem membrane_fouling_closed_from_evidence {C : ConcentrationPolarizationPackage}
    (F : MembraneFoulingPackage C) (E : MembraneFoulingEvidence F) :
    MembraneFoulingClosed F := by
  exact And.intro E.poreBlockingMechanismClosed
    (And.intro E.cakeLayerFormationClosed
      (And.intro E.irreversibleFluxLossClosed E.cleaningEfficiencyClosed))

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse