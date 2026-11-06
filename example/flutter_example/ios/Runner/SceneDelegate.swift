import UIKit
import Flutter
import Mindbox

// Sample SceneDelegate forwarding scene events to Maestra.
// `FlutterSceneDelegate` itself requires Flutter >= 3.35; this example app
// also relies on `FlutterImplicitEngineDelegate` in AppDelegate, which is
// Flutter >= 3.41.
// Maestra SDK notes:
// https://github.com/maestra-io/flutter-sdk/blob/main/UISCENE_MIGRATION.md
@available(iOS 13.0, *)
class SceneDelegate: FlutterSceneDelegate {

    override func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        Mindbox.shared.track(.launchScene(connectionOptions))
        super.scene(scene, willConnectTo: session, options: connectionOptions)
    }

    override func scene(
        _ scene: UIScene,
        continue userActivity: NSUserActivity
    ) {
        Mindbox.shared.track(.universalLink(userActivity))
        super.scene(scene, continue: userActivity)
    }
}
