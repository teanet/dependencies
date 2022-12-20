import Foundation
import VNReviewsInterfaces

/// VM для отображения отзывов
@available(iOS 13.0.0, *)
@MainActor public class ReviewsListVM {

	public typealias Dependencies = IReviewsServiceProvider

	var viewModelChanged: (() -> Void)?

	private(set) var state: State = .loading {
		didSet {
			viewModelChanged?()
		}
	}

	private let args: Args
	private let dependencies: Dependencies

	public init(dependencies: Dependencies, args: Args) {
		self.args = args
		self.dependencies = dependencies
	}

	func willAppear() async {
		do {
			state = .loading
			let reviews = try await self.dependencies.reviewsService.fetchReviews(cardId: args.cardId)
			state = .success(reviews)
		} catch {
			state = .error
		}
	}
}

// MARK: - Args

@available(iOS 13.0.0, *)
extension ReviewsListVM {
	public struct Args {
		public let cardId: String
		public init(cardId: String) {
			self.cardId = cardId
		}
	}
}

// MARK: - State
@available(iOS 13.0.0, *)
extension ReviewsListVM {
	public enum State: Equatable {
		case loading
		case success([ReviewModel])
		case error
	}
}
