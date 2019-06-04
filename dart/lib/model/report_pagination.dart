part of keyclic_sdk_api.api;

class ReportPagination {
  ReportPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.embedded,
    this.links,
  });

  ReportPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    embedded = ReportCollection.fromJson(json['_embedded']);
    links = PaginationLinks.fromJson(json['_links']);
  }

  int limit;

  int page;

  int pages;

  int total;

  ReportCollection embedded;

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
    return 'ReportPagination[limit=$limit, page=$page, pages=$pages, total=$total, embedded=$embedded, links=$links, ]';
  }

  static List<ReportPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReportPagination>()
        : json.map((value) => ReportPagination.fromJson(value)).toList();
  }

  static Map<String, ReportPagination> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReportPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportPagination.fromJson(value));
    }
    return map;
  }
}
