import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean

def ConstrainedBlochNormalSeveralClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bloch_normal_several_endgame (A : AdmissibleClass) : ConstrainedBlochNormalSeveralClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean
end HautevilleHouse