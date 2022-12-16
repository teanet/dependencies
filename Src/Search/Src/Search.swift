import Foundation
import VNCommon
import VNSearchInterfaces
import VNServicesInterfaces

// Dependencies
// этот парень генерируется
public class SearchDependencies: ISearchDependencies {
	let dependencies: ISearchDependencies
	public init(dependencies: ISearchDependencies) {
		self.dependencies = dependencies
	}
	public lazy var services: IServices = { self.dependencies.services }()
}

public protocol ISearchDependencies: IServicesProvider {}


public class SearchContainer: BaseContainer<SearchDependencies>, ISearch {
	public var searchResultsProvider: ISearchResultsProvider = SearchResultsProvider()

	public var placeholder: String {
		return "123"
	}
}

class SearchResultsProvider: ISearchResultsProvider {
	var results: [String] {
		["321", "123"]
	}
}
