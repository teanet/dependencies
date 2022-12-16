import UIKit

@available(iOS 13.0.0, *)
public protocol IReviewsContainer: IReviewsServiceProvider {
	func reviewsVC() -> UIViewController
}

public protocol IReviewsServiceProvider: AnyObject {
	var reviewsService: IReviewsService { get }
}


public protocol IReviewsContainerProvider {
	@available(iOS 13.0.0, *)
	var reviews: IReviewsContainer { get }
}
