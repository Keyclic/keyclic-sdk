part of keyclic_sdk_api.api;

class ReportReference {
  ReportReference();

  factory ReportReference.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportReference();
  }

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportReference && runtimeType == other.runtimeType;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    return hashCode;
  }

  static List<ReportReference> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReportReference>[]
        : json.map((dynamic value) => ReportReference.fromJson(value)).toList();
  }

  static Map<String, ReportReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReportReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportReference.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {};
  }

  @override
  String toString() {
    return 'ReportReference[]';
  }
}
