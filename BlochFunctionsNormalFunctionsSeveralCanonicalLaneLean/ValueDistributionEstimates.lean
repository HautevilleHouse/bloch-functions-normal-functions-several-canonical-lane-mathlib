import canonicalLaneMathlib.AdmissibleClass
import BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean.NormalFunctionPackage

namespace HautevilleHouse
namespace BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean

structure ValueDistributionEstimatesPackage {B : BlochFunctionPackage}
    (N : NormalFunctionPackage B) where
  ahlforsShimizuCharacteristic : ℝ → ℝ
  nevanlinnaDefect : Prop
  defectRelation : Prop

structure ValueDistributionEstimatesEvidence {B : BlochFunctionPackage}
    {N : NormalFunctionPackage B}
    (V : ValueDistributionEstimatesPackage N) where
  defectRelationClosed : V.defectRelation

def ValueDistributionEstimatesClosed {B : BlochFunctionPackage}
    {N : NormalFunctionPackage B}
    (V : ValueDistributionEstimatesPackage N) : Prop :=
  V.defectRelation

theorem value_distribution_estimates_closed_from_evidence {B : BlochFunctionPackage}
    {N : NormalFunctionPackage B} (V : ValueDistributionEstimatesPackage N)
    (E : ValueDistributionEstimatesEvidence V) :
    ValueDistributionEstimatesClosed V := by
  exact E.defectRelationClosed

end BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean
end HautevilleHouse