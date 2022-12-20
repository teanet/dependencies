import VNSearchInterfaces

public protocol IReviewsContainerDependencies: ISearchContainerProvider {
}

// [ этот парень генерируется
public class ReviewsContainerDependencies: IReviewsContainerDependencies {
	public lazy var search: ISearchContainer = self.dependencies.search
	let dependencies: IReviewsContainerDependencies

	public init(dependencies: IReviewsContainerDependencies) {
		self.dependencies = dependencies
	}
}
// ]
