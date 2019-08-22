part of keyclic_sdk_api.api;

class CategoryPagination {
  CategoryPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.embedded,
    this.links,
  });

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

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryPagination &&
        runtimeType == other.runtimeType &&
        limit == other.limit &&
        page == other.page &&
        pages == other.pages &&
        total == other.total &&
        embedded == other.embedded &&
        links == other.links;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      limit.hashCode ^
      page.hashCode ^
      pages.hashCode ^
      total.hashCode ^
      embedded.hashCode ^
      links.hashCode;

  static List<CategoryPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? <CategoryPagination>[]
        : json.map((value) => CategoryPagination.fromJson(value)).toList();
  }

  static Map<String, CategoryPagination> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, CategoryPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = CategoryPagination.fromJson(value));
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
    return 'CategoryPagination[limit=$limit, page=$page, pages=$pages, total=$total, embedded=$embedded, links=$links, ]';
  }
}
