part of keyclic_sdk_api.api;

class PlanCollection {
  PlanCollection({
    this.items,
  });

  factory PlanCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlanCollection(
      items: Plan.listFromJson(json['items']),
    );
  }

  List<Plan> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Plan element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<PlanCollection> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PlanCollection.fromJson(value))
            ?.toList() ??
        <PlanCollection>[];
  }

  static Map<String, PlanCollection> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PlanCollection>((String key, dynamic value) {
          return MapEntry(key, PlanCollection.fromJson(value));
        }) ??
        <String, PlanCollection>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (items != null) 'items': items,
    };
  }

  @override
  String toString() {
    return 'PlanCollection[items=$items, ]';
  }
}
