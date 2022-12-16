import VNReviewsInterfaces
import VNSearchInterfaces

@available(iOS 13.0.0, *)
public class ReviewsContainer: IReviewsContainer {
	@MainActor public func reviewsVC() -> UIViewController {
		ReviewsListVC(
			viewModel: ReviewsListVM(
				dependencies: self.reviewsListVMDependencies(),
				args: ReviewsListVM.Args(cardId: self.dependencies.search.cardId)
			)
		)
	}

	// можно утащить в базовый класс
	let dependencies: IReviewsContainerDependencies
	public init(dependencies: IReviewsContainerDependencies) {
		self.dependencies = dependencies
	}

	public lazy var reviewsService: IReviewsService = ReviewsService()
}

// [ это генерируем
@available(iOS 13.0.0, *)
extension ReviewsContainer {
	func reviewsListVMDependencies() -> IReviewsListVMDependencies {
		// он генерируется
		class ReviewsListVMDependencies: IReviewsListVMDependencies {
			unowned let dependencies: IReviewsServiceProvider
			init(dependencies: IReviewsServiceProvider) {
				self.dependencies = dependencies
			}
			public lazy var reviewsService: IReviewsService = { self.dependencies.reviewsService }()
		}
		return ReviewsListVMDependencies(dependencies: self)
	}
}
// ]

public protocol IReviewsContainerDependencies: ISearchContainerProvider {
}

// [ этот парень генерируется
public class ReviewsContainerDependencies: IReviewsContainerDependencies {
	public lazy var search: ISearchContainer = { self.dependencies.search }()
	let dependencies: IReviewsContainerDependencies
	public init(dependencies: IReviewsContainerDependencies) {
		self.dependencies = dependencies
	}
}
// ]
