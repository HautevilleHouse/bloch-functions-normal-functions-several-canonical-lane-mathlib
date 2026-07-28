import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean

structure BlochFunctionPackage where
  domain : Type u
  blochConstant : ℝ
  derivativeBound : Prop
  holomorphic : Prop
  blochConstantPositive : blochConstant > 0
  derivativeBoundHolds : derivativeBound

structure BlochFunctionEvidence (B : BlochFunctionPackage) where
  blochConstantPositiveClosed : B.blochConstantPositive
  derivativeBoundHoldsClosed : B.derivativeBoundHolds

def BlochFunctionClosed (B : BlochFunctionPackage) : Prop :=
  B.blochConstantPositive ∧ B.derivativeBoundHolds

theorem bloch_function_closed_from_evidence (B : BlochFunctionPackage) (E : BlochFunctionEvidence B) : BlochFunctionClosed B := by
  exact And.intro E.blochConstantPositiveClosed E.derivativeBoundHoldsClosed

structure NormalFunctionPackage where
  domain : Type u
  characteristic : ℝ
  boundedCharacteristic : Prop
  meromorphic : Prop
  characteristicNonnegative : characteristic ≥ 0
  boundedCharacteristicHolds : boundedCharacteristic

structure NormalFunctionEvidence (N : NormalFunctionPackage) where
  characteristicNonnegativeClosed : N.characteristicNonnegative
  boundedCharacteristicHoldsClosed : N.boundedCharacteristicHolds

def NormalFunctionClosed (N : NormalFunctionPackage) : Prop :=
  N.characteristicNonnegative ∧ N.boundedCharacteristicHolds

theorem normal_function_closed_from_evidence (N : NormalFunctionPackage) (E : NormalFunctionEvidence N) : NormalFunctionClosed N := by
  exact And.intro E.characteristicNonnegativeClosed E.boundedCharacteristicHoldsClosed

structure SeveralVariablesPackage where
  domain : Type u
  dimension : ℕ
  boundedDomain : Prop
  pseudoconvex : Prop
  dimensionPositive : dimension ≥ 1
  boundedDomainHolds : boundedDomain

structure SeveralVariablesEvidence (S : SeveralVariablesPackage) where
  dimensionPositiveClosed : S.dimensionPositive
  boundedDomainHoldsClosed : S.boundedDomainHolds

def SeveralVariablesClosed (S : SeveralVariablesPackage) : Prop :=
  S.dimensionPositive ∧ S.boundedDomainHolds

theorem several_variables_closed_from_evidence (S : SeveralVariablesPackage) (E : SeveralVariablesEvidence S) : SeveralVariablesClosed S := by
  exact And.intro E.dimensionPositiveClosed E.boundedDomainHoldsClosed

end BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean
end HautevilleHouse