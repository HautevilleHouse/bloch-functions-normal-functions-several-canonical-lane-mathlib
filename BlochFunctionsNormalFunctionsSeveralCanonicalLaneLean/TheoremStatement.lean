import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "bloch-functions-normal-functions-several-canonical-lane",
  theoremName := "Bloch Functions Normal Functions Several",
  theoremObject := "BlochAdmittedObject with blochProperty and normalFunctionProperty",
  classicalBoundary := "classical boundary carried by formalization",
  manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through bridge and gate closure",
  certificateLane := "manifold_constrained",
  carriedRemainder := "classical source boundary carried by theorem boundary open"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "bloch-functions-normal-functions-several-canonical-lane" := rfl

end BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean
end HautevilleHouse