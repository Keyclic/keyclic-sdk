part of keyclic_sdk_api.api;

class FeedbackPagination {
  FeedbackPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.embedded,
    this.links,
  });

  FeedbackPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    embedded = FeedbackCollection.fromJson(json['_embedded']);
    links = PaginationLinks.fromJson(json['_links']);
  }

  int limit;

  int page;

  int pages;

  int total;

  FeedbackCollection embedded;

  PaginationLinks links;

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
    return 'FeedbackPagination[limit=$limit, page=$page, pages=$pages, total=$total, embedded=$embedded, links=$links, ]';
  }

  static List<FeedbackPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FeedbackPagination>()
        : json.map((value) => FeedbackPagination.fromJson(value)).toList();
  }

  static Map<String, FeedbackPagination> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackPagination.fromJson(value));
    }
    return map;
  }
}
