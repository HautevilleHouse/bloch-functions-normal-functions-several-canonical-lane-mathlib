import canonicalLaneMathlib.AdmissibleClass
import BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean.NormalFunctionRealization
import BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean.BlochFunctionRealization

namespace HautevilleHouse
namespace BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean

structure AdmissibleConvergence (Ω : Type*) [TopologicalSpace Ω] where
  sequence : ℕ → NormalFunctionSeveral Ω
  limit : BlochFunctionSeveral Ω
  convergenceUniform : Prop
  convergenceClosed : Prop

structure AdmissibleConvergenceEvidence (C : AdmissibleConvergence Ω) where
  convergenceUniformClosed : C.convergenceUniform
  convergenceClosedClosed : C.convergenceClosed

def AdmissibleConvergenceClosed (C : AdmissibleConvergence Ω) : Prop :=
  C.convergenceUniform ∧ C.convergenceClosed

theorem admissible_convergence_closed_from_evidence (C : AdmissibleConvergence Ω) (E : AdmissibleConvergenceEvidence C) :
    AdmissibleConvergenceClosed C := by
  exact And.intro E.convergenceUniformClosed E.convergenceClosedClosed

end BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean
end HautevilleHouse