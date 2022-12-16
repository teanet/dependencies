import VNCommon
import VNSearch
import VNSearchInterfaces
import VNServices
import VNServicesInterfaces

// это тоже можно генерировать
protocol IAppContaner:
	IServicesProvider,
	ISearchProvider {}

// это тоже можно генерировать
public class AppContaner: IAppContaner {
	public lazy var services: IServices = ServicesContainer(dependencies: ServicesDependencies(dependencies: self))
	public lazy var search: ISearch = SearchContainer(dependencies: SearchDependencies(dependencies: self))

	public init() {}
}

// это тоже можно генерировать
extension AppContaner: ISearchDependencies {}
extension AppContaner: IServicesDependencies {}
