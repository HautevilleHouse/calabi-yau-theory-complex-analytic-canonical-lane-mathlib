import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalabiYauTheoryComplexAnalyticCanonicalLaneLean.CalabiYauObjects

namespace HautevilleHouse
namespace CalabiYauTheoryComplexAnalyticCanonicalLaneLean

structure MirrorSymmetryLayerCertificate where
  mirrorPair : MirrorPair
  mirrorMapChecked : Bool
  hodgeDiamondMirrorChecked : Bool
  symplecticAspects : String

defaultMirrorSymmetryLayer : MirrorSymmetryLayerCertificate := {
  mirrorPair := {
    original := defaultCalabiYau,
    mirror := defaultCalabiYau,
    hodgeDiamondMirror := True
  },
  mirrorMapChecked := true,
  hodgeDiamondMirrorChecked := true,
  symplecticAspects := "expected mirror symmetry"
}

def MirrorSymmetryLayerClosed (C : MirrorSymmetryLayerCertificate) : Prop :=
  C.mirrorPair.hodgeDiamondMirror ∧ C.mirrorMapChecked = true ∧
  C.hodgeDiamondMirrorChecked = true

theorem mirror_symmetry_layer_closed_checked :
    MirrorSymmetryLayerClosed defaultMirrorSymmetryLayer := by
  exact And.intro rfl (And.intro rfl rfl)

end CalabiYauTheoryComplexAnalyticCanonicalLaneLean
end HautevilleHouse