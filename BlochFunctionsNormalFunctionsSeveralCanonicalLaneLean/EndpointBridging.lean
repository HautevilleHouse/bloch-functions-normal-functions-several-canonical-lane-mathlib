import canonicalLaneMathlib.AdmissibleClass
import BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean.NormalFunctionRealization

namespace HautevilleHouse
namespace BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean

structure EndpointBridge (Ω : Type*) [TopologicalSpace Ω] where
  function : NormalFunctionSeveral Ω
  endpointExists : Prop
  limitValue : ℂ
  bridgeClosed : Prop

structure EndpointBridgeEvidence (E : EndpointBridge Ω) where
  endpointExistsClosed : E.endpointExists
  bridgeClosedClosed : E.bridgeClosed

def EndpointBridgeClosed (E : EndpointBridge Ω) : Prop :=
  E.endpointExists ∧ E.bridgeClosed

theorem endpoint_bridge_closed_from_evidence (E : EndpointBridge Ω) (Ev : EndpointBridgeEvidence E) :
    EndpointBridgeClosed E := by
  exact And.intro Ev.endpointExistsClosed Ev.bridgeClosedClosed

end BlochFunctionsNormalFunctionsSeveralCanonicalLaneLean
end HautevilleHouse