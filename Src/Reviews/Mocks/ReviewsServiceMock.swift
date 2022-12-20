import Foundation
import VNReviewsInterfaces
import VNCommon
import VNReviewsDependencies

/// Тестовый сервис отзывов
@available(iOS 13.0.0, *)
public class ReviewsServiceMock: IReviewsService {
	public init() {}

	public func fetchReviews(cardId: String) async throws -> [ReviewModel] {
		[ReviewModel(id: "1", text: "Тестовый отзыв для карточки \(cardId)")]
	}
}
