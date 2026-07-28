import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean.BlochNormalSeveralPackages

namespace HautevilleHouse
namespace BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean

structure BlochNormalSeveralAdmittedObject where
  blochPackage : BlochFunctionPackage
  normalPackage : NormalFunctionPackage
  severalPackage : SeveralVariablesPackage
  compatibility : Prop
  compatibilityHolds : compatibility

structure AdmissibleClass where
  object : BlochNormalSeveralAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let O := A.object
  BlochFunctionClosed O.blochPackage ∧ NormalFunctionClosed O.normalPackage ∧ SeveralVariablesClosed O.severalPackage

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  let O := A.object
  have hB : BlochFunctionClosed O.blochPackage := bloch_function_closed_from_evidence O.blochPackage (by
    -- We need to construct BlochFunctionEvidence from O? Actually we don't have it. We need to add evidence fields to BlochNormalSeveralAdmittedObject.
    -- For now, assume we have evidence via compatibility or other fields. We'll add evidence fields.
    sorry)
  -- This is incomplete. We need to adjust the structure to include evidence.
  exact And.intro hB (And.intro (by sorry) (by sorry))

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean
end HautevilleHouse