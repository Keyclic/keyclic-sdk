part of keyclic_sdk_api.api;

class Pagination {
  Pagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
  });

  Pagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    links = PaginationLinks.fromJson(json['_links']);
  }

  int limit;

  int page;

  int pages;

  int total;

  PaginationLinks links;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Pagination &&
        runtimeType == other.runtimeType &&
        limit == other.limit &&
        page == other.page &&
        pages == other.pages &&
        total == other.total &&
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
      links.hashCode;

  static List<Pagination> listFromJson(List<dynamic> json) {
    return json == null
        ? <Pagination>[]
        : json.map((value) => Pagination.fromJson(value)).toList();
  }

  static Map<String, Pagination> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Pagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Pagination.fromJson(value));
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
    };
  }

  @override
  String toString() {
    return 'Pagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, ]';
  }
}
