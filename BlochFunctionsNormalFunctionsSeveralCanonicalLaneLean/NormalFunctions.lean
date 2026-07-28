import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean

structure NormalFunctionFamily where
  indexSet : Type
  functions : indexSet → (ℂ^{n} → ℂ)
  domain : ℂ^{n}
  normalityCondition : Prop
  familyEquicontinuous : Prop
  familyNormal : Prop

structure NormalFamilyEvidence (F : NormalFunctionFamily) where
  equicontinuousClosed : F.familyEquicontinuous
  normalClosed : F.familyNormal

def NormalFamilyClosed (F : NormalFunctionFamily) : Prop :=
  F.familyEquicontinuous ∧ F.familyNormal

theorem normal_family_closed_from_evidence (F : NormalFunctionFamily)
    (E : NormalFamilyEvidence F) : NormalFamilyClosed F := by
  exact And.intro E.equicontinuousClosed E.normalClosed

end BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean
end HautevilleHouse