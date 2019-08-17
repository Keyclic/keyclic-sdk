part of keyclic_sdk_api.api;

class PublicationLinksPlace {
  PublicationLinksPlace({
    this.href,
    this.iriTemplate,
  });

  PublicationLinksPlace.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        PublicationLinksPlaceIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the place associated to the given publication. */
  String href;

  PublicationLinksPlaceIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksPlace && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<PublicationLinksPlace> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PublicationLinksPlace>()
        : json.map((value) => PublicationLinksPlace.fromJson(value)).toList();
  }

  static Map<String, PublicationLinksPlace> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PublicationLinksPlace>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PublicationLinksPlace.fromJson(value));
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
    return 'PublicationLinksPlace[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
