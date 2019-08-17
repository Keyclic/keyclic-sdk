part of keyclic_sdk_api.api;

class ReviewLinks {
  ReviewLinks({
    this.author,
    this.itemReviewed,
    this.self,
  });

  ReviewLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    author = ReviewLinksAuthor.fromJson(json['author']);
    itemReviewed = ReviewLinksItemReviewed.fromJson(json['itemReviewed']);
    self = ReviewLinksSelf.fromJson(json['self']);
  }

  ReviewLinksAuthor author;

  ReviewLinksItemReviewed itemReviewed;

  ReviewLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewLinks && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<ReviewLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReviewLinks>()
        : json.map((value) => ReviewLinks.fromJson(value)).toList();
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
      'author': author,
      'itemReviewed': itemReviewed,
      'self': self,
    };
  }

  @override
  String toString() {
    return 'ReviewLinks[author=$author, itemReviewed=$itemReviewed, self=$self, ]';
  }
}
