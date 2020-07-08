part of keyclic_sdk_api.api;

class RuleEmbedded {
  RuleEmbedded({
    this.category,
    this.service,
  });

  factory RuleEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return RuleEmbedded(
      category: Category.fromJson(json['category']),
      service: Service.fromJson(json['service']),
    );
  }

  Category category;

  Service service;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleEmbedded &&
        runtimeType == other.runtimeType &&
        category == other.category &&
        service == other.service;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= category?.hashCode ?? 0;
    hashCode ^= service?.hashCode ?? 0;

    return hashCode;
  }

  static List<RuleEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => RuleEmbedded.fromJson(value))
            ?.toList() ??
        <RuleEmbedded>[];
  }

  static Map<String, RuleEmbedded> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, RuleEmbedded>((String key, dynamic value) {
          return MapEntry(key, RuleEmbedded.fromJson(value));
        }) ??
        <String, RuleEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (category != null) 'category': category.toJson(),
      if (service != null) 'service': service.toJson(),
    };
  }

  @override
  String toString() {
    return 'RuleEmbedded[category=$category, service=$service, ]';
  }
}
