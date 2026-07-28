import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean

structure BlochFunctionPackage (A : AdmissibleClass) where
  domainComplexDimension : ℕ
  derivativeBound : Prop
  blochSeminorm : Prop
  coveringProperty : Prop

structure BlochFunctionEvidence {A : AdmissibleClass} (B : BlochFunctionPackage A) where
  derivativeBoundClosed : B.derivativeBound
  blochSeminormClosed : B.blochSeminorm
  coveringPropertyClosed : B.coveringProperty

def BlochFunctionClosed {A : AdmissibleClass} (B : BlochFunctionPackage A) : Prop :=
  B.derivativeBound ∧ B.blochSeminorm ∧ B.coveringProperty

theorem bloch_function_closed_from_evidence {A : AdmissibleClass}
    (B : BlochFunctionPackage A) (E : BlochFunctionEvidence B) : BlochFunctionClosed B := by
  exact And.intro E.derivativeBoundClosed (And.intro E.blochSeminormClosed E.coveringPropertyClosed)

end BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean
end HautevilleHouse