import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean

structure CarathéodoryKobayashiMetric (Ω : Type*) [TopologicalSpace Ω] where
  domain : Ω
  carathéodoryMetric : Prop
  kobayashiMetric : Prop
  comparisonInequality : Prop

structure CarathéodoryKobayashiMetricEvidence (M : CarathéodoryKobayashiMetric Ω) where
  carathéodoryMetricClosed : M.carathéodoryMetric
  kobayashiMetricClosed : M.kobayashiMetric
  comparisonInequalityClosed : M.comparisonInequality

def CarathéodoryKobayashiMetricClosed (M : CarathéodoryKobayashiMetric Ω) : Prop :=
  M.carathéodoryMetric ∧ M.kobayashiMetric ∧ M.comparisonInequality

theorem carathéodory_kobayashi_metric_closed_from_evidence (M : CarathéodoryKobayashiMetric Ω) (E : CarathéodoryKobayashiMetricEvidence M) :
    CarathéodoryKobayashiMetricClosed M := by
  exact And.intro E.carathéodoryMetricClosed (And.intro E.kobayashiMetricClosed E.comparisonInequalityClosed)

end BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean
end HautevilleHouse