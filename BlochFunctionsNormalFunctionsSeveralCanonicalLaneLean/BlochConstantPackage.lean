import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean

structure BlochConstantPackage (A : AdmissibleClass) where
  blochConstantValue : ℝ
  landauConstantValue : ℝ
  blochConstantBound : Prop
  landauConstantBound : Prop
  dimensionDepends : Prop

structure BlochConstantEvidence {A : AdmissibleClass} (C : BlochConstantPackage A) where
  blochConstantBoundClosed : C.blochConstantBound
  landauConstantBoundClosed : C.landauConstantBound
  dimensionDependsClosed : C.dimensionDepends

def BlochConstantClosed {A : AdmissibleClass} (C : BlochConstantPackage A) : Prop :=
  C.blochConstantBound ∧ C.landauConstantBound ∧ C.dimensionDepends

theorem bloch_constant_closed_from_evidence {A : AdmissibleClass}
    (C : BlochConstantPackage A) (E : BlochConstantEvidence C) : BlochConstantClosed C := by
  exact And.intro E.blochConstantBoundClosed (And.intro E.landauConstantBoundClosed E.dimensionDependsClosed)

end BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean
end HautevilleHouse