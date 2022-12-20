import XCTest
@testable import VNReviewsUI
import VNReviews
import VNReviewsMocks
import VNReviewsInterfaces

@available(iOS 13.0.0, *)
@MainActor final class ReviewsListTests: XCTestCase {

	var container: ReviewsContainer!
	@MainActor
	override func setUp() {
		// для тестов регистрируем моки нужных нам зависимостей
		self.container = ReviewsContainer(dependencies: ReviewsContainerDependenciesMocks())
		self.container.reviewsService = ReviewsServiceMock()
	}

	func testReviewsList() async {
		// при создании VM не нужно пробрасывать зависимости, только аргументы
		let vm = ReviewsListVM(dependencies: self.container, args: ReviewsListVM.Args(cardId: "42"))
		await vm.willAppear()
		XCTAssertEqual(
			vm.state,
			.success([
				ReviewModel(id: "1", text: "Тестовый отзыв для карточки 42")
			])
		)
	}
}
