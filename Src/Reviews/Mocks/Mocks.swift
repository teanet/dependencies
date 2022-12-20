import VNReviewsDependencies
import VNSearchMocks
import VNSearchInterfaces

// этот парень генерируется для каждого модуля с тестами
public class ReviewsContainerDependenciesMocks: IReviewsContainerDependencies {
	public lazy var search: ISearchContainer = SearchContainerMock()
}
