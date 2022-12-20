import VNReviewsInterfaces
import VNReviewsDependencies

@available(iOS 13.0.0, *)
public class ReviewsContainer: IReviewsContainer {

	// можно утащить в базовый класс
	let dependencies: IReviewsContainerDependencies
	public init(dependencies: IReviewsContainerDependencies) {
		self.dependencies = dependencies
	}

	public lazy var reviewsService: IReviewsService = ReviewsService()
}
