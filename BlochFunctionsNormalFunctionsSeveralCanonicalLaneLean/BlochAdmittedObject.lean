import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean

structure BlochDomain where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier

structure BlochAdmittedObject where
  domain : BlochDomain
  functionSpace : Type
  blochSeminormBounded : Prop
  normalFunctionCondition : Prop
  blochNormalProperty : Prop
  conclusion : blochNormalProperty

end BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean
end HautevilleHouse