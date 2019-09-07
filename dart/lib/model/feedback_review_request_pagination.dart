part of keyclic_sdk_api.api;

class FeedbackReviewRequestPagination extends Pagination {
  FeedbackReviewRequestPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  FeedbackReviewRequestPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    links = PaginationLinks.fromJson(json['_links']);
    embedded = FeedbackReviewRequestCollection.fromJson(json['_embedded']);
  }

  int limit;

  int page;

  int pages;

  int total;

  PaginationLinks links;

  FeedbackReviewRequestCollection embedded;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackReviewRequestPagination &&
        runtimeType == other.runtimeType &&
        limit == other.limit &&
        page == other.page &&
        pages == other.pages &&
        total == other.total &&
        links == other.links &&
        embedded == other.embedded;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      limit.hashCode ^
      page.hashCode ^
      pages.hashCode ^
      total.hashCode ^
      links.hashCode ^
      embedded.hashCode;

  static List<FeedbackReviewRequestPagination> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <FeedbackReviewRequestPagination>[]
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

  Map<String, dynamic> toJson() {
    return {
      'limit': limit,
      'page': page,
      'pages': pages,
      'total': total,
      '_links': links,
      '_embedded': embedded,
    };
  }

  @override
  String toString() {
    return 'FeedbackReviewRequestPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded, ]';
  }
}
