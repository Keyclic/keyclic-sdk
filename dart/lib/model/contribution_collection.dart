part of keyclic_sdk_api.api;

class ContributionCollection {
  ContributionCollection({
    this.items,
  });

  ContributionCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Contribution.listFromJson(json['items']);
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
  int get hashCode =>
      0 ^
      items.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode);

  static List<ContributionCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? <ContributionCollection>[]
        : json.map((value) => ContributionCollection.fromJson(value)).toList();
  }

  static Map<String, ContributionCollection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ContributionCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ContributionCollection.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items,
    };
  }

  @override
  String toString() {
    return 'ContributionCollection[items=$items, ]';
  }
}
