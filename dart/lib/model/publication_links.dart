part of keyclic_sdk_api.api;

class PublicationLinks {
  PublicationLinks({
    this.author,
    this.feed,
    this.organization,
    this.self,
  });

  factory PublicationLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PublicationLinks(
      author: PublicationLinksAuthor.fromJson(json['author']),
      feed: PublicationLinksFeed.fromJson(json['feed']),
      organization: PublicationLinksOrganization.fromJson(json['organization']),
      self: PublicationLinksSelf.fromJson(json['self']),
    );
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
  int get hashCode {
    int hashCode = 0;

    hashCode ^= author?.hashCode ?? 0;
    hashCode ^= feed?.hashCode ?? 0;
    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<PublicationLinks> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PublicationLinks.fromJson(value))
            ?.toList() ??
        <PublicationLinks>[];
  }

  static Map<String, PublicationLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PublicationLinks>((String key, dynamic value) {
          return MapEntry(key, PublicationLinks.fromJson(value));
        }) ??
        <String, PublicationLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'author': author?.toJson(),
      'feed': feed?.toJson(),
      'organization': organization?.toJson(),
      'self': self?.toJson(),
    };
  }

  @override
  String toString() {
    return 'PublicationLinks[author=$author, feed=$feed, organization=$organization, self=$self, ]';
  }
}
