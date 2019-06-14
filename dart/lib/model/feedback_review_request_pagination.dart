part of keyclic_sdk_api.api;

class FeedbackReviewRequestPagination {
  FeedbackReviewRequestPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.embedded,
    this.links,
  });

  FeedbackReviewRequestPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    embedded = FeedbackReviewRequestCollection.fromJson(json['_embedded']);
    links = PaginationLinks.fromJson(json['_links']);
  }

  int limit;

  int page;

  int pages;

  int total;

  FeedbackReviewRequestCollection embedded;

  PaginationLinks links;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackReviewRequestPagination &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'limit': limit,
      'page': page,
      'pages': pages,
      'total': total,
      '_embedded': embedded,
      '_links': links,
    };
  }

  @override
  String toString() {
    return 'FeedbackReviewRequestPagination[limit=$limit, page=$page, pages=$pages, total=$total, embedded=$embedded, links=$links, ]';
  }

  static List<FeedbackReviewRequestPagination> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<FeedbackReviewRequestPagination>()
        : json
            .map((value) => FeedbackReviewRequestPagination.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackReviewRequestPagination> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackReviewRequestPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackReviewRequestPagination.fromJson(value));
    }
    return map;
  }
}
