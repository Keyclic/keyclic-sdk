part of keyclic_sdk_api.api;

class Rule {
  Rule({
    this.embedded,
    this.links,
    this.id,
    this.type,
  });

  factory Rule.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Rule(
      embedded: RuleEmbedded.fromJson(json['_embedded']),
      links: RuleLinks.fromJson(json['_links']),
      id: json['id'],
      type: json['type'],
    );
  }

  RuleEmbedded embedded;

  RuleLinks links;

  String id;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Rule &&
        runtimeType == other.runtimeType &&
        embedded == other.embedded &&
        links == other.links &&
        id == other.id &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= embedded?.hashCode ?? 0;
    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<Rule> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Rule.fromJson(value))?.toList() ??
        <Rule>[];
  }

  static Map<String, Rule> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Rule>((String key, dynamic value) {
          return MapEntry(key, Rule.fromJson(value));
        }) ??
        <String, Rule>{};
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded?.toJson(),
      '_links': links?.toJson(),
      'id': id,
      'type': type,
    };
  }

  @override
  String toString() {
    return 'Rule[embedded=$embedded, links=$links, id=$id, type=$type, ]';
  }
}
