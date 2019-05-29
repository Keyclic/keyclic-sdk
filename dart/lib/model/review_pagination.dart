part of keyclic_sdk_api.api;

class ReviewPagination {
  ReviewPagination();

  ReviewPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    embedded = ReviewCollection.fromJson(json['_embedded']);
    links = PaginationLinks.fromJson(json['_links']);
  }

  int limit;

  int page;

  int pages;

  int total;

  ReviewCollection embedded;

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
    return 'ReviewPagination[limit=$limit, page=$page, pages=$pages, total=$total, embedded=$embedded, links=$links, ]';
  }

  static List<ReviewPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReviewPagination>()
        : json.map((value) => ReviewPagination.fromJson(value)).toList();
  }

  static Map<String, ReviewPagination> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReviewPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewPagination.fromJson(value));
    }
    return map;
  }
}
