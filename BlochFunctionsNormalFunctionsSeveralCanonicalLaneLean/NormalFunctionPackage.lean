import canonicalLaneMathlib.AdmissibleClass
import BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean.BlochFunctionPackage

namespace HautevilleHouse
namespace BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean

structure NormalFunctionPackage (B : BlochFunctionPackage) where
  caratheodoryMetric : Prop
  uniformlyContinuous : Prop
  normalFamilyCondition : Prop

structure NormalFunctionEvidence {B : BlochFunctionPackage}
    (N : NormalFunctionPackage B) where
  caratheodoryMetricClosed : N.caratheodoryMetric
  uniformlyContinuousClosed : N.uniformlyContinuous
  normalFamilyConditionClosed : N.normalFamilyCondition

def NormalFunctionClosed {B : BlochFunctionPackage}
    (N : NormalFunctionPackage B) : Prop :=
  N.caratheodoryMetric ∧ N.uniformlyContinuous ∧ N.normalFamilyCondition

theorem normal_function_closed_from_evidence {B : BlochFunctionPackage}
    (N : NormalFunctionPackage B) (E : NormalFunctionEvidence N) :
    NormalFunctionClosed N := by
  exact And.intro E.caratheodoryMetricClosed
    (And.intro E.uniformlyContinuousClosed E.normalFamilyConditionClosed)

end BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean
end HautevilleHouse