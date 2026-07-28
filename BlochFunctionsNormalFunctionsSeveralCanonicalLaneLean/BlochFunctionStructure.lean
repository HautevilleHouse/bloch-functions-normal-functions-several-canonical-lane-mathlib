import canonicalLaneMathlib.AdmissibleClass

/-!
# Bloch Functions in Several Variables
This module defines the structure of Bloch functions on a domain in ℂ^n.
-/

namespace HautevilleHouse
namespace BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean

structure BlochFunctionOnDomain where
  domain : Type u
  complexStructure : ComplexStructure domain
  holomorphic : Prop
  blochProperty : Prop
  blochSeminorm : Type v
  derivativeBound : Prop
  derivativeBoundTerm : derivativeBound

structure BlochAdmittedObject where
  blochFunction : BlochFunctionOnDomain
  blochConstant : ℕ
  constantBound : Prop
  conclusion : constantBound

def BlochWitnessClosed (O : BlochAdmittedObject) : Prop :=
  O.constantBound

end BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean
end HautevilleHouse