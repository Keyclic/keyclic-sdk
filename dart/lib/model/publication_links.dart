part of keyclic_sdk_api.api;

class PublicationLinks {
  PublicationLinks({
    this.self,
    this.author,
    this.organization,
    this.place,
  });

  PublicationLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    self = PublicationLinksSelf.fromJson(json['self']);
    author = PublicationLinksAuthor.fromJson(json['author']);
    organization = PublicationLinksOrganization.fromJson(json['organization']);
    place = PublicationLinksPlace.fromJson(json['place']);
  }

  PublicationLinksSelf self;

  PublicationLinksAuthor author;

  PublicationLinksOrganization organization;

  PublicationLinksPlace place;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinks && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'author': author,
      'organization': organization,
      'place': place,
    };
  }

  @override
  String toString() {
    return 'PublicationLinks[self=$self, author=$author, organization=$organization, place=$place, ]';
  }

  static List<PublicationLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PublicationLinks>()
        : json.map((value) => PublicationLinks.fromJson(value)).toList();
  }

  static Map<String, PublicationLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PublicationLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PublicationLinks.fromJson(value));
    }
    return map;
  }
}
