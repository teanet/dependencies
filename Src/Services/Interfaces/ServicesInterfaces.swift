import VNCommon

public protocol IServices {
	var userDefaults: UserDefaults { get }
}
public protocol IServicesProvider: IDependenciesProvider {
	var services: IServices { get }
}
