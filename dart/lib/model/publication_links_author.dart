part of keyclic_sdk_api.api;

class PublicationLinksAuthor {
  PublicationLinksAuthor({
    this.href,
    this.iriTemplate,
  });

  PublicationLinksAuthor.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        DelegationLinksCreatedByIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the author associated to the given publication. */
  String href;

  DelegationLinksCreatedByIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksAuthor && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'PublicationLinksAuthor[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<PublicationLinksAuthor> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PublicationLinksAuthor>()
        : json.map((value) => PublicationLinksAuthor.fromJson(value)).toList();
  }

  static Map<String, PublicationLinksAuthor> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PublicationLinksAuthor>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PublicationLinksAuthor.fromJson(value));
    }
    return map;
  }
}
