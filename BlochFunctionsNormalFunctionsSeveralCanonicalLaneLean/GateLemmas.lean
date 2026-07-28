import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean

def gateClosed (A : BlochAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : BlochAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean
end HautevilleHouse