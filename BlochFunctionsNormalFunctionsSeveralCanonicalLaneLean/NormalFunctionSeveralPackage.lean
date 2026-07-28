import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean

structure NormalFunctionSeveralPackage (A : AdmissibleClass) where
  targetDomain : Type u
  mapping : A.object.domain → targetDomain
  holomorphic : Prop
  separatedFromBoundary : Prop
  jacobianNonZero : Prop

structure NormalFunctionSeveralEvidence {A : AdmissibleClass} (N : NormalFunctionSeveralPackage A) where
  holomorphicClosed : N.holomorphic
  separatedFromBoundaryClosed : N.separatedFromBoundary
  jacobianNonZeroClosed : N.jacobianNonZero

def NormalFunctionSeveralClosed {A : AdmissibleClass} (N : NormalFunctionSeveralPackage A) : Prop :=
  N.holomorphic ∧ N.separatedFromBoundary ∧ N.jacobianNonZero

theorem normal_function_several_closed_from_evidence {A : AdmissibleClass}
    (N : NormalFunctionSeveralPackage A) (E : NormalFunctionSeveralEvidence N) : NormalFunctionSeveralClosed N := by
  exact And.intro E.holomorphicClosed (And.intro E.separatedFromBoundaryClosed E.jacobianNonZeroClosed)

end BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean
end HautevilleHouse