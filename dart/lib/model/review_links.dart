part of keyclic_sdk_api.api;

class ReviewLinks {
  ReviewLinks({
    this.author,
    this.itemReviewed,
    this.self,
  });

  factory ReviewLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewLinks(
      author: ReviewLinksAuthor.fromJson(json['author']),
      itemReviewed: ReviewLinksItemReviewed.fromJson(json['itemReviewed']),
      self: ReviewLinksSelf.fromJson(json['self']),
    );
  }

  ReviewLinksAuthor author;

  ReviewLinksItemReviewed itemReviewed;

  ReviewLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewLinks &&
        runtimeType == other.runtimeType &&
        author == other.author &&
        itemReviewed == other.itemReviewed &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= author?.hashCode ?? 0;
    hashCode ^= itemReviewed?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReviewLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReviewLinks>[]
        : json.map((dynamic value) => ReviewLinks.fromJson(value)).toList();
  }

  static Map<String, ReviewLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReviewLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewLinks.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (author != null) 'author': author,
      if (itemReviewed != null) 'itemReviewed': itemReviewed,
      if (self != null) 'self': self,
    };
  }

  @override
  String toString() {
    return 'ReviewLinks[author=$author, itemReviewed=$itemReviewed, self=$self, ]';
  }
}
