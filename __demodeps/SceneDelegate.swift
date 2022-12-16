import UIKit
import VNI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

	let contaner = AppContaner()

	var window: UIWindow?

	func scene(
		_ scene: UIScene,
		willConnectTo session: UISceneSession,
		options connectionOptions: UIScene.ConnectionOptions) {

			guard let windowScene = scene as? UIWindowScene else { return }

			let window = UIWindow(windowScene: windowScene)
			window.rootViewController = self.contaner.reviews.reviewsVC()
			self.window = window
			window.makeKeyAndVisible()
		}
}
