part of keyclic_sdk_api.api;

class CategoryPagination {
  CategoryPagination();

  CategoryPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    embedded = CategoryCollection.fromJson(json['_embedded']);
    links = PaginationLinks.fromJson(json['_links']);
  }

  int limit;

  int page;

  int pages;

  int total;

  CategoryCollection embedded;

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
    return 'CategoryPagination[limit=$limit, page=$page, pages=$pages, total=$total, embedded=$embedded, links=$links, ]';
  }

  static List<CategoryPagination> listFromJson(List<dynamic> json) {
    return json == null ? List<CategoryPagination>() : json.map((value) => CategoryPagination.fromJson(value)).toList();
  }

  static Map<String, CategoryPagination> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CategoryPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CategoryPagination.fromJson(value));
    }
    return map;
  }
}
