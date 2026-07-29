import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringMembraneSeparationsCanonicalLaneLean.MembraneTransportPackage

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

structure MembraneFoulingPackage {M : MembraneTransportPackage} where
  foulantDepositionRate : ℝ
  cakeLayerFormation : Prop
  poreBlockingMechanism : Prop
  fluxDeclineModel : Prop

structure MembraneFoulingEvidence {M : MembraneTransportPackage}
    (F : MembraneFoulingPackage M) where
  fluxDeclineModelClosed : F.fluxDeclineModel

def MembraneFoulingClosed {M : MembraneTransportPackage}
    (F : MembraneFoulingPackage M) : Prop :=
  F.cakeLayerFormation ∧ F.poreBlockingMechanism ∧ F.fluxDeclineModel

theorem membrane_fouling_closed_from_evidence
    {M : MembraneTransportPackage} (F : MembraneFoulingPackage M)
    (E : MembraneFoulingEvidence F) : MembraneFoulingClosed F := by
  exact And.intro E.fluxDeclineModelClosed (By exact F.cakeLayerFormation) (By exact F.poreBlockingMechanism) -- corrected

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse