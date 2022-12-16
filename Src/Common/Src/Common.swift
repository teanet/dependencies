public protocol IDependenciesProvider {}

open class BaseContainer<T: IDependenciesProvider>: IDependenciesConsumer {
	public typealias Dependencies = T

	public let dependencies: Dependencies

	public required init(dependencies: Dependencies) {
		self.dependencies = dependencies
	}
}

public protocol IDependenciesConsumer {
	associatedtype Dependencies

	init(dependencies: Dependencies)
}
