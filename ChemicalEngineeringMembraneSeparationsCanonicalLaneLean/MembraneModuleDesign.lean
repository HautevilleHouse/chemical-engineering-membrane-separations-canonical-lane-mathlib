import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringMembraneSeparationsCanonicalLaneLean.ReverseOsmosisPerformance

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

structure MembraneModuleDesignPackage {M : MembraneTransportPackage}
    {S : SolutionDiffusionModelPackage M}
    {R : ReverseOsmosisPerformancePackage M S} where
  membraneArea : ℝ
  feedFlowRate : ℝ
  pressureDrop : ℝ
  moduleEfficiency : Prop

structure MembraneModuleDesignEvidence {M : MembraneTransportPackage}
    {S : SolutionDiffusionModelPackage M}
    {R : ReverseOsmosisPerformancePackage M S}
    (D : MembraneModuleDesignPackage M S R) where
  moduleEfficiencyClosed : D.moduleEfficiency

def MembraneModuleDesignClosed {M : MembraneTransportPackage}
    {S : SolutionDiffusionModelPackage M}
    {R : ReverseOsmosisPerformancePackage M S}
    (D : MembraneModuleDesignPackage M S R) : Prop :=
  D.moduleEfficiency

theorem membrane_module_design_closed_from_evidence
    {M : MembraneTransportPackage} {S : SolutionDiffusionModelPackage M}
    {R : ReverseOsmosisPerformancePackage M S}
    (D : MembraneModuleDesignPackage M S R)
    (E : MembraneModuleDesignEvidence D) : MembraneModuleDesignClosed D := by
  exact E.moduleEfficiencyClosed

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse