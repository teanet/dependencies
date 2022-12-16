import VNCommon

public protocol IServicesContainer {
	var userDefaults: UserDefaults { get }
}

public protocol IServicesContainerProvider {
	var services: IServicesContainer { get }
}
