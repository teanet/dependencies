import UIKit
import VNI
import VNReviewsUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

	let contaner = AppContaner()

	var window: UIWindow?

	func scene(
		_ scene: UIScene,
		willConnectTo session: UISceneSession,
		options connectionOptions: UIScene.ConnectionOptions) {

			guard let windowScene = scene as? UIWindowScene else { return }

			let window = UIWindow(windowScene: windowScene)
			window.rootViewController = ReviewsListVC(
				viewModel: ReviewsListVM(
					dependencies: self.contaner.reviews,
					args: ReviewsListVM.Args(cardId: "42")
				)
			)
			self.window = window
			window.makeKeyAndVisible()
		}
}
#warning("123")
//// [ это генерируем
//@available(iOS 13.0.0, *)
//extension ReviewsContainer {
//	func reviewsListVMDependencies() -> IReviewsListVMDependencies {
//		// он генерируется
//		class ReviewsListVMDependencies: IReviewsListVMDependencies {
//			unowned let dependencies: IReviewsServiceProvider
//			init(dependencies: IReviewsServiceProvider) {
//				self.dependencies = dependencies
//			}
//			public lazy var reviewsService: IReviewsService = self.dependencies.reviewsService
//		}
//		return ReviewsListVMDependencies(dependencies: self)
//	}
//}
//// ]
