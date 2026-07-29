import ChemicalEngineeringMembraneSeparationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MembraneWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse