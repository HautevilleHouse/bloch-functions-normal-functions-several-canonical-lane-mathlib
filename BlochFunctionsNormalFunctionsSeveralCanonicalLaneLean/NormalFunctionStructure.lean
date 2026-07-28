import canonicalLaneMathlib.AdmissibleClass

/-!
# Normal Functions in Several Variables
This module defines normal families and normal functions.
-/

namespace HautevilleHouse
namespace BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean

structure NormalFunctionOnDomain where
  domain : Type u
  complexStructure : ComplexStructure domain
  meromorphic : Prop
  normalProperty : Prop
  sphericalDerivative : Type v

def NormalFamilyProperty (F : Set NormalFunctionOnDomain) : Prop :=
  ∀ f ∈ F, f.normalProperty

structure NormalFamilyAdmitted where
  family : Set NormalFunctionOnDomain
  normalFamily : Prop
  normalFamilyTerm : normalFamily

end BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean
end HautevilleHouse