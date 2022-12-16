import VNCommon

public protocol ISearchResultsProvider {
	var results: [String] { get }
}

public protocol IPlaceholderProvider {
	var placeholder: String { get }
	var searchResultsProvider: ISearchResultsProvider { get }
}

public protocol ISearch: IPlaceholderProvider {
}

public protocol ISearchProvider: IDependenciesProvider {
	var search: ISearch { get }
}
