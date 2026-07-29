import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

structure ConcentrationPolarizationPackage where
  boundaryLayerThickness : Type u
  concentrationProfile : Prop
  massTransferCoefficient : Prop
  fluxDeclineModel : Prop

structure ConcentrationPolarizationEvidence (C : ConcentrationPolarizationPackage) where
  boundaryLayerThicknessClosed : C.boundaryLayerThickness
  concentrationProfileClosed : C.concentrationProfile
  massTransferCoefficientClosed : C.massTransferCoefficient
  fluxDeclineModelClosed : C.fluxDeclineModel

def ConcentrationPolarizationClosed (C : ConcentrationPolarizationPackage) : Prop :=
  C.boundaryLayerThickness ∧ C.concentrationProfile ∧ C.massTransferCoefficient ∧ C.fluxDeclineModel

theorem concentration_polarization_closed_from_evidence (C : ConcentrationPolarizationPackage)
    (E : ConcentrationPolarizationEvidence C) : ConcentrationPolarizationClosed C := by
  exact And.intro E.boundaryLayerThicknessClosed
    (And.intro E.concentrationProfileClosed
      (And.intro E.massTransferCoefficientClosed E.fluxDeclineModelClosed))

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse
