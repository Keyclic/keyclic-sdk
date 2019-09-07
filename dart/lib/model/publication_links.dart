part of keyclic_sdk_api.api;

class PublicationLinks {
  PublicationLinks({
    this.author,
    this.feed,
    this.organization,
    this.self,
  });

  PublicationLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    author = PublicationLinksAuthor.fromJson(json['author']);
    feed = PublicationLinksFeed.fromJson(json['feed']);
    organization = PublicationLinksOrganization.fromJson(json['organization']);
    self = PublicationLinksSelf.fromJson(json['self']);
  }

  PublicationLinksAuthor author;

  PublicationLinksFeed feed;

  PublicationLinksOrganization organization;

  PublicationLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinks &&
        runtimeType == other.runtimeType &&
        author == other.author &&
        feed == other.feed &&
        organization == other.organization &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      author.hashCode ^
      feed.hashCode ^
      organization.hashCode ^
      self.hashCode;

  static List<PublicationLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <PublicationLinks>[]
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

  Map<String, dynamic> toJson() {
    return {
      'author': author,
      'feed': feed,
      'organization': organization,
      'self': self,
    };
  }

  @override
  String toString() {
    return 'PublicationLinks[author=$author, feed=$feed, organization=$organization, self=$self, ]';
  }
}
