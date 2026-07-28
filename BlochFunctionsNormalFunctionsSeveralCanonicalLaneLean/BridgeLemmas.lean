import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean

def bridgeClosed (A : BlochAdmissibleClass) : Prop :=
  BlochWitnessClosed A.object

theorem bridge_from_admissible_class (A : BlochAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.blochNormFinite

end BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean
end HautevilleHouse