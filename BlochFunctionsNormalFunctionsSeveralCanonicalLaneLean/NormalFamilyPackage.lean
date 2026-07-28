import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean

structure NormalFamilyPackage (A : AdmissibleClass) where
  familyType : Type u
  familyMembers : familyType → (A.object.domain → ℂ)
  normalCriterion : Prop
  montelProperty : Prop

structure NormalFamilyEvidence {A : AdmissibleClass} (F : NormalFamilyPackage A) where
  normalCriterionClosed : F.normalCriterion
  montelPropertyClosed : F.montelProperty

def NormalFamilyClosed {A : AdmissibleClass} (F : NormalFamilyPackage A) : Prop :=
  F.normalCriterion ∧ F.montelProperty

theorem normal_family_closed_from_evidence {A : AdmissibleClass}
    (F : NormalFamilyPackage A) (E : NormalFamilyEvidence F) : NormalFamilyClosed F := by
  exact And.intro E.normalCriterionClosed E.montelPropertyClosed

end BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean
end HautevilleHouse