part of keyclic_sdk_api.api;

class ReportPlace {
  ReportPlace({
    this.description,
    this.name,
    this.type,
    this.links,
    this.embedded,
  });

  factory ReportPlace.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportPlace(
      description: json['description'],
      name: json['name'],
      type: json['type'],
      links: PlaceLinks.fromJson(json['_links']),
      embedded: PlaceEmbedded.fromJson(json['_embedded']),
    );
  }

  String description;

  String name;

  String type;

  PlaceLinks links;

  PlaceEmbedded embedded;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportPlace &&
        runtimeType == other.runtimeType &&
        description == other.description &&
        name == other.name &&
        type == other.type &&
        links == other.links &&
        embedded == other.embedded;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= embedded?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReportPlace> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReportPlace>[]
        : json.map((dynamic value) => ReportPlace.fromJson(value)).toList();
  }

  static Map<String, ReportPlace> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReportPlace>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportPlace.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (description != null) 'description': description,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (links != null) '_links': links,
      if (embedded != null) '_embedded': embedded,
    };
  }

  @override
  String toString() {
    return 'ReportPlace[description=$description, name=$name, type=$type, links=$links, embedded=$embedded, ]';
  }
}
