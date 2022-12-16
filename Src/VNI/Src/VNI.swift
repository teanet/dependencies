import VNCommon
import VNSearch
import VNSearchInterfaces
import VNServices
import VNServicesInterfaces
import VNReviewsInterfaces
import VNReviews

// это тоже можно генерировать
protocol IAppContaner:
	ISearchContainerProvider,
	IReviewsContainerProvider,
	IServicesContainerProvider {}

// это тоже можно генерировать
public class AppContaner: IAppContaner {
	public lazy var services: IServicesContainer = ServicesContainer(dependencies: ServicesContainerDependencies(dependencies: self))
	public lazy var search: ISearchContainer = SearchContainer(dependencies: SearchDependencies(dependencies: self))
	@available(iOS 13.0.0, *)
	public lazy var reviews: IReviewsContainer = ReviewsContainer(dependencies: ReviewsContainerDependencies(dependencies: self))

	public init() {}
}

// это тоже можно генерировать
extension AppContaner: ISearchContainerDependencies {}
extension AppContaner: IServicesContainerDependencies {}
extension AppContaner: IReviewsContainerDependencies {}
