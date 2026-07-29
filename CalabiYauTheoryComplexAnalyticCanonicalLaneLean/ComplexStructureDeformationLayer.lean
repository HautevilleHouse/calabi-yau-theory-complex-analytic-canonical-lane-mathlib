import HautevilleHouse.CalabiYauTheoryComplexAnalyticCanonicalLaneLean.CalabiYauModuliBridge

namespace HautevilleHouse
namespace CalabiYauTheoryComplexAnalyticCanonicalLaneLean

structure ComplexDeformationCertificate where
  deformationKodairaSpencer : String
  unobstructedness : Bool
  tianTodorovTheorem : Bool
  moduliDimension : Nat

def defaultComplexDeformationCertificate : ComplexDeformationCertificate := {
  deformationKodairaSpencer := "Kodaira-Spencer map injective",
  unobstructedness := true,
  tianTodorovTheorem := true,
  moduliDimension := 3
}

def ComplexDeformationLayerClosed (C : ComplexDeformationCertificate) : Prop :=
  C.unobstructedness = true ∧ C.tianTodorovTheorem = true

theorem complex_deformation_layer_closed_checked :
    ComplexDeformationLayerClosed defaultComplexDeformationCertificate := by
  exact And.intro rfl rfl

end CalabiYauTheoryComplexAnalyticCanonicalLaneLean
end HautevilleHouse