import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean

structure NormalFunctionSeveral (Ω : Type*) [TopologicalSpace Ω] where
  domain : Ω
  holomorphic : Prop
  boundedInchwartz : Prop
  normalityCondition : Prop

structure NormalFunctionSeveralEvidence (N : NormalFunctionSeveral Ω) where
  holomorphicClosed : N.holomorphic
  boundedInchwartzClosed : N.boundedInchwartz
  normalityConditionClosed : N.normalityCondition

def NormalFunctionSeveralClosed (N : NormalFunctionSeveral Ω) : Prop :=
  N.holomorphic ∧ N.boundedInchwartz ∧ N.normalityCondition

theorem normal_function_several_closed_from_evidence (N : NormalFunctionSeveral Ω) (E : NormalFunctionSeveralEvidence N) :
    NormalFunctionSeveralClosed N := by
  exact And.intro E.holomorphicClosed (And.intro E.boundedInchwartzClosed E.normalityConditionClosed)

end BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean
end HautevilleHouse