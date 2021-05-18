part of keyclic_sdk_api.api;

class RuleData {
  RuleData({
    this.category,
    this.dispatcher,
    this.service,
  });

  factory RuleData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return RuleData(
      category: json['category'],
      dispatcher: json['dispatcher'],
      service: json['service'],
    );
  }

  String category;

  String dispatcher;

  String service;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleData &&
        runtimeType == other.runtimeType &&
        category == other.category &&
        dispatcher == other.dispatcher &&
        service == other.service;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= category?.hashCode ?? 0;
    hashCode ^= dispatcher?.hashCode ?? 0;
    hashCode ^= service?.hashCode ?? 0;

    return hashCode;
  }

  static List<RuleData> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => RuleData.fromJson(value))?.toList() ??
        <RuleData>[];
  }

  static Map<String, RuleData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, RuleData>((String key, dynamic value) {
          return MapEntry(key, RuleData.fromJson(value));
        }) ??
        <String, RuleData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'dispatcher': dispatcher,
      'service': service,
    };
  }

  @override
  String toString() {
    return 'RuleData[category=$category, dispatcher=$dispatcher, service=$service, ]';
  }
}
