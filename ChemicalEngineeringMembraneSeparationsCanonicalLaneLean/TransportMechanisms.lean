import ChemicalEngineeringMembraneSeparationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringMembraneSeparationsCanonicalLaneLean

structure TransportMechanismsPackage where
  solutionDiffusion : Prop
  poreFlow : Prop
  facilitatedTransport : Prop
  ionExchange : Prop

structure TransportMechanismsEvidence (P : TransportMechanismsPackage) where
  solutionDiffusionClosed : P.solutionDiffusion
  poreFlowClosed : P.poreFlow
  facilitatedTransportClosed : P.facilitatedTransport
  ionExchangeClosed : P.ionExchange

def TransportMechanismsClosed (P : TransportMechanismsPackage) : Prop :=
  P.solutionDiffusion ∧ P.poreFlow ∧ P.facilitatedTransport ∧ P.ionExchange

theorem transport_mechanisms_closed_from_evidence (P : TransportMechanismsPackage) (E : TransportMechanismsEvidence P) :
    TransportMechanismsClosed P := by
  exact And.intro E.solutionDiffusionClosed (And.intro E.poreFlowClosed (And.intro E.facilitatedTransportClosed E.ionExchangeClosed))

end ChemicalEngineeringMembraneSeparationsCanonicalLaneLean
end HautevilleHouse