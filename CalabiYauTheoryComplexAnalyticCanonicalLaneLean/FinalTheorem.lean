import HautevilleHouse.CalabiYauTheoryComplexAnalyticCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CalabiYauTheoryComplexAnalyticCanonicalLaneLean.ComplexStructureDeformationLayer

namespace HautevilleHouse
namespace CalabiYauTheoryComplexAnalyticCanonicalLaneLean

def ConstrainedCalabiYauClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ ComplexDeformationLayerClosed defaultComplexDeformationCertificate

theorem calabi_yau_endgame (A : AdmissibleClass) :
    ConstrainedCalabiYauClosure A := by
  refine And.intro (bridge_from_admissible_class A) ?_
  refine And.intro (gate_from_admissible_class A) complex_deformation_layer_closed_checked

end CalabiYauTheoryComplexAnalyticCanonicalLaneLean
end HautevilleHouse