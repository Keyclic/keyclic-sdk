part of keyclic_sdk_api.api;

class ReportCollection {
  ReportCollection({
    this.items,
  });

  ReportCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Report.listFromJson(json['items']);
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
  int get hashCode =>
      0 ^
      items.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode);

  static List<ReportCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReportCollection>[]
        : json.map((value) => ReportCollection.fromJson(value)).toList();
  }

  static Map<String, ReportCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReportCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportCollection.fromJson(value));
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
    return 'ReportCollection[items=$items, ]';
  }
}
