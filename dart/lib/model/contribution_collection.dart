// @dart=2.10
part of keyclic_sdk_api.api;

class ContributionCollection {
  ContributionCollection({
    this.items,
  });

  factory ContributionCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ContributionCollection(
      items: Contribution.listFromJson(json['items']),
    );
  }

  List<Contribution> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContributionCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Contribution element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<ContributionCollection> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ContributionCollection.fromJson(value))
            ?.toList() ??
        <ContributionCollection>[];
  }

  static Map<String, ContributionCollection> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, ContributionCollection>((String key, dynamic value) {
          return MapEntry(key, ContributionCollection.fromJson(value));
        }) ??
        <String, ContributionCollection>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (items != null) 'items': items,
    };
  }

  @override
  String toString() {
    return 'ContributionCollection[items=$items, ]';
  }
}
