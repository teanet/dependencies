import VNCommon

public protocol IPlaceholderProvider {
	var placeholder: String { get }
}

public protocol ICardIdProvider {
	var cardId: String { get }
}

public protocol ISearchContainer: IPlaceholderProvider, ICardIdProvider {
}

public protocol ISearchContainerProvider {
	var search: ISearchContainer { get }
}
