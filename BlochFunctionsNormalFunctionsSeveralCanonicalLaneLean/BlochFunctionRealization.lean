import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean

structure BlochFunctionSeveral (Ω : Type*) [TopologicalSpace Ω] where
  domain : Ω
  holomorphic : Prop
  boundedDerivative : Prop
  blochNormFinite : Prop

structure BlochFunctionSeveralEvidence (B : BlochFunctionSeveral Ω) where
  holomorphicClosed : B.holomorphic
  boundedDerivativeClosed : B.boundedDerivative
  blochNormFiniteClosed : B.blochNormFinite

def BlochFunctionSeveralClosed (B : BlochFunctionSeveral Ω) : Prop :=
  B.holomorphic ∧ B.boundedDerivative ∧ B.blochNormFinite

theorem bloch_function_several_closed_from_evidence (B : BlochFunctionSeveral Ω) (E : BlochFunctionSeveralEvidence B) :
    BlochFunctionSeveralClosed B := by
  exact And.intro E.holomorphicClosed (And.intro E.boundedDerivativeClosed E.blochNormFiniteClosed)

end BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean
end HautevilleHouse