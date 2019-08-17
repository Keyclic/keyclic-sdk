part of keyclic_sdk_api.api;

class FeedPagination {
  FeedPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.embedded,
    this.links,
  });

  FeedPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    embedded = FeedCollection.fromJson(json['_embedded']);
    links = PaginationLinks.fromJson(json['_links']);
  }

  int limit;

  int page;

  int pages;

  int total;

  FeedCollection embedded;

  PaginationLinks links;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FeedPagination && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<FeedPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FeedPagination>()
        : json.map((value) => FeedPagination.fromJson(value)).toList();
  }

  static Map<String, FeedPagination> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedPagination.fromJson(value));
    }
    return map;
  }

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
    return 'FeedPagination[limit=$limit, page=$page, pages=$pages, total=$total, embedded=$embedded, links=$links, ]';
  }
}
