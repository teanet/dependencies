import Foundation
import VNCommon
import VNServicesInterfaces
import VNSearchInterfaces

public protocol IServicesDependencies: ISearchProvider {}

// этот парень генерируется
public class ServicesDependencies: IServicesDependencies {

	let dependencies: IServicesDependencies
	public init(dependencies: IServicesDependencies) {
		self.dependencies = dependencies
	}

	public lazy var search: ISearch = { self.dependencies.search }()
}

public class ServicesContainer: BaseContainer<ServicesDependencies>, IServices {
	public var userDefaults: UserDefaults = .standard
}
