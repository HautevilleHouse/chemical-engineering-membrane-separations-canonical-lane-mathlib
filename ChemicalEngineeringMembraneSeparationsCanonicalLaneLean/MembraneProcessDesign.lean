import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

structure MembraneProcessDesignPackage where
  moduleGeometry : Type u
  flowConfiguration : Prop
  energyRequirement : Prop
  moduleSizing : Prop
  operatingCondition : Prop

structure MembraneProcessDesignEvidence (D : MembraneProcessDesignPackage) where
  moduleGeometryClosed : D.moduleGeometry
  flowConfigurationClosed : D.flowConfiguration
  energyRequirementClosed : D.energyRequirement
  moduleSizingClosed : D.moduleSizing
  operatingConditionClosed : D.operatingCondition

def MembraneProcessDesignClosed (D : MembraneProcessDesignPackage) : Prop :=
  D.moduleGeometry ∧ D.flowConfiguration ∧ D.energyRequirement ∧ D.moduleSizing ∧ D.operatingCondition

theorem membrane_process_design_closed_from_evidence (D : MembraneProcessDesignPackage)
    (E : MembraneProcessDesignEvidence D) : MembraneProcessDesignClosed D := by
  exact And.intro E.moduleGeometryClosed
    (And.intro E.flowConfigurationClosed
      (And.intro E.energyRequirementClosed
        (And.intro E.moduleSizingClosed E.operatingConditionClosed)))

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse
