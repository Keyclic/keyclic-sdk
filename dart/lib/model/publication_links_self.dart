part of keyclic_sdk_api.api;

class PublicationLinksSelf {
  PublicationLinksSelf({
    this.href,
    this.iriTemplate,
  });

  PublicationLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = PublicationLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the self associated to the given publication. */
  String href;

  PublicationLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksSelf && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<PublicationLinksSelf> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PublicationLinksSelf>()
        : json.map((value) => PublicationLinksSelf.fromJson(value)).toList();
  }

  static Map<String, PublicationLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PublicationLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PublicationLinksSelf.fromJson(value));
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
    return 'PublicationLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
