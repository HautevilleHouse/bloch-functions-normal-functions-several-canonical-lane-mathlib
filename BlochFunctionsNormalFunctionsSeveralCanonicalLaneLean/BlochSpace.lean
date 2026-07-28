import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean

structure BlochObject where
  domain : Type
  dimension : Nat
  blochFunction : domain → ℂ
  blochSeminfinite : Prop
  blochNormFinite : Prop

def BlochWitnessClosed (O : BlochObject) : Prop :=
  O.blochNormFinite

end BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean
end HautevilleHouse