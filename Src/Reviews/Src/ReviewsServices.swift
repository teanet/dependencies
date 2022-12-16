import Foundation
import VNReviewsInterfaces

/// Боевой сервис отзывов
@available(iOS 13.0, *)
public class ReviewsService: IReviewsService {

	public func fetchReviews(cardId: String) async throws -> [ReviewModel] {
		try await Task.sleep(nanoseconds: 3_000_000_000)
		return [
			ReviewModel(id: "1", text: "Боевой отзыв для карточки \(cardId)")
		]
	}
}


