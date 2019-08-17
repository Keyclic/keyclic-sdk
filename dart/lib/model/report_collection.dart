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
    if (identical(this, other)) {
      return true;
    }

    return other is ReportCollection && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<ReportCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReportCollection>()
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
