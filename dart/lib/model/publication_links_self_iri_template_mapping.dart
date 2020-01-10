part of keyclic_sdk_api.api;

class PublicationLinksSelfIriTemplateMapping {
  PublicationLinksSelfIriTemplateMapping({
    this.publication,
  });

  factory PublicationLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PublicationLinksSelfIriTemplateMapping(
      publication: json['publication'],
    );
  }

  String publication;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        publication == other.publication;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= publication?.hashCode ?? 0;

    return hashCode;
  }

  static List<PublicationLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <PublicationLinksSelfIriTemplateMapping>[]
        : json
            .map((dynamic value) =>
                PublicationLinksSelfIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, PublicationLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PublicationLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PublicationLinksSelfIriTemplateMapping.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (publication != null) 'publication': publication,
    };
  }

  @override
  String toString() {
    return 'PublicationLinksSelfIriTemplateMapping[publication=$publication, ]';
  }
}
