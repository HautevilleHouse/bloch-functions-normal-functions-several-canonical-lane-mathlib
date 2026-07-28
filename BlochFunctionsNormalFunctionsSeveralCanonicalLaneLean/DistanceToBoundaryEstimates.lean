import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean

structure DistanceToBoundaryEstimate (Ω : Type*) [MetricSpace Ω] where
  domain : Ω
  blochNorm : ℝ
  distanceToBoundary : ℝ
  estimateInequality : Prop

structure DistanceToBoundaryEstimateEvidence (D : DistanceToBoundaryEstimate Ω) where
  estimateInequalityClosed : D.estimateInequality

def DistanceToBoundaryEstimateClosed (D : DistanceToBoundaryEstimate Ω) : Prop :=
  D.estimateInequality

theorem distance_to_boundary_estimate_closed_from_evidence (D : DistanceToBoundaryEstimate Ω) (E : DistanceToBoundaryEstimateEvidence D) :
    DistanceToBoundaryEstimateClosed D := by
  exact E.estimateInequalityClosed

end BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean
end HautevilleHouse