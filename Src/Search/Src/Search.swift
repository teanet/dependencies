import Foundation
import VNCommon
import VNSearchInterfaces
import VNServicesInterfaces

public protocol ISearchContainerDependencies {}
// этот парень генерируется
public class SearchDependencies: ISearchContainerDependencies {
	let dependencies: ISearchContainerDependencies
	public init(dependencies: ISearchContainerDependencies) {
		self.dependencies = dependencies
	}
}

public class SearchContainer: ISearchContainer {
	public var cardId: String {
		return "SearchContainerCardId"
	}

	public var placeholder: String {
		return "123"
	}

	let dependencies: ISearchContainerDependencies
	public init(dependencies: ISearchContainerDependencies) {
		self.dependencies = dependencies
	}
}
