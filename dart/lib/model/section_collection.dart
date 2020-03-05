part of keyclic_sdk_api.api;

class SectionCollection {
  SectionCollection({
    this.items,
  });

  factory SectionCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SectionCollection(
      items: Section.listFromJson(json['items']),
    );
  }

  List<Section> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SectionCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Section element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<SectionCollection> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => SectionCollection.fromJson(value))
            ?.toList() ??
        <SectionCollection>[];
  }

  static Map<String, SectionCollection> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, SectionCollection.fromJson(value));
        }) ??
        <String, SectionCollection>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (items != null) 'items': items,
    };
  }

  @override
  String toString() {
    return 'SectionCollection[items=$items, ]';
  }
}
