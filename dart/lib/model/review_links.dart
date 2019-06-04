part of keyclic_sdk_api.api;

class ReviewLinks {
  ReviewLinks({
    this.self,
    this.author,
  });

  ReviewLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    self = ReviewLinksSelf.fromJson(json['self']);
    author = ReviewLinksAuthor.fromJson(json['author']);
  }

  ReviewLinksSelf self;

  ReviewLinksAuthor author;

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'author': author,
    };
  }

  @override
  String toString() {
    return 'ReviewLinks[self=$self, author=$author, ]';
  }

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
}
