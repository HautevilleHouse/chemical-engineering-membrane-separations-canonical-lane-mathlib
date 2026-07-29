import ChemicalEngineeringMembraneSeparationsCanonicalLaneLean.PoreFlowEvidence

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

structure MembraneModulePackage where
  feedFlowRate : Prop
  retentateComposition : Prop
  permeateComposition : Prop
  stageCut : Prop
  rejectionCoefficient : Prop

structure MembraneModuleEvidence (M : MembraneModulePackage) where
  feedFlowRateClosed : M.feedFlowRate
  retentateCompositionClosed : M.retentateComposition
  permeateCompositionClosed : M.permeateComposition
  stageCutClosed : M.stageCut
  rejectionCoefficientClosed : M.rejectionCoefficient

def MembraneModuleClosed (M : MembraneModulePackage) : Prop :=
  M.feedFlowRate ∧ M.retentateComposition ∧
  M.permeateComposition ∧ M.stageCut ∧ M.rejectionCoefficient

theorem membrane_module_closed_from_evidence (M : MembraneModulePackage)
    (E : MembraneModuleEvidence M) : MembraneModuleClosed M :=
  And.intro E.feedFlowRateClosed
    (And.intro E.retentateCompositionClosed
      (And.intro E.permeateCompositionClosed
        (And.intro E.stageCutClosed E.rejectionCoefficientClosed)))

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse