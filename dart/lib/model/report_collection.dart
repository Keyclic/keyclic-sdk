part of keyclic_sdk_api.api;

class ReportCollection {
  ReportCollection({
    this.items,
  });

  factory ReportCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportCollection(
      items: Report.listFromJson(json['items']),
    );
  }

  List<Report> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Report element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<ReportCollection> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ReportCollection.fromJson(value))
            ?.toList() ??
        <ReportCollection>[];
  }

  static Map<String, ReportCollection> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ReportCollection>((String key, dynamic value) {
          return MapEntry(key, ReportCollection.fromJson(value));
        }) ??
        <String, ReportCollection>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (items != null) 'items': items,
    };
  }

  @override
  String toString() {
    return 'ReportCollection[items=$items, ]';
  }
}
