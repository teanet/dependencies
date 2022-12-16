import Foundation
import VNCommon
import VNServicesInterfaces
import VNSearchInterfaces

public protocol IServicesContainerDependencies {}

// этот парень генерируется
public class ServicesContainerDependencies: IServicesContainerDependencies {

	let dependencies: IServicesContainerDependencies
	public init(dependencies: IServicesContainerDependencies) {
		self.dependencies = dependencies
	}
}

public class ServicesContainer: IServicesContainer {
	public var userDefaults: UserDefaults = .standard

	let dependencies: IServicesContainerDependencies
	public init(dependencies: IServicesContainerDependencies) {
		self.dependencies = dependencies
	}
}
