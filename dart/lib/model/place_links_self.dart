part of keyclic_sdk_api.api;

class PlaceLinksSelf {
  PlaceLinksSelf({
    this.href,
    this.iriTemplate,
  });

  PlaceLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = PlaceLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the self associated to the given place. */
  String href;

  PlaceLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksSelf &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= (href?.hashCode ?? 0);
    hashCode ^= (iriTemplate?.hashCode ?? 0);

    return hashCode;
  }

  static List<PlaceLinksSelf> listFromJson(List<dynamic> json) {
    return json == null
        ? <PlaceLinksSelf>[]
        : json.map((dynamic value) => PlaceLinksSelf.fromJson(value)).toList();
  }

  static Map<String, PlaceLinksSelf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlaceLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PlaceLinksSelf.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'PlaceLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
