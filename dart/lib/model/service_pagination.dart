part of keyclic_sdk_api.api;

class ServicePagination {
  ServicePagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.embedded,
    this.links,
  });

  ServicePagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    embedded = ServiceCollection.fromJson(json['_embedded']);
    links = PaginationLinks.fromJson(json['_links']);
  }

  int limit;

  int page;

  int pages;

  int total;

  ServiceCollection embedded;

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
    return 'ServicePagination[limit=$limit, page=$page, pages=$pages, total=$total, embedded=$embedded, links=$links, ]';
  }

  static List<ServicePagination> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ServicePagination>()
        : json.map((value) => ServicePagination.fromJson(value)).toList();
  }

  static Map<String, ServicePagination> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServicePagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ServicePagination.fromJson(value));
    }
    return map;
  }
}
