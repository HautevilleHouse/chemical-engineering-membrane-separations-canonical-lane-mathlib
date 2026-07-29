import ChemicalEngineeringMembraneSeparationsCanonicalLaneLean.MembraneAdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse