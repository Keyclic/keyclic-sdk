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
  int get hashCode {
    int hashCode = 0;

    hashCode ^= limit?.hashCode ?? 0;
    hashCode ^= page?.hashCode ?? 0;
    hashCode ^= pages?.hashCode ?? 0;
    hashCode ^= total?.hashCode ?? 0;
    hashCode ^= links?.hashCode ?? 0;

    return hashCode;
  }

  static List<Pagination> listFromJson(List<dynamic> json) {
    return json == null
        ? <Pagination>[]
        : json.map((dynamic value) => Pagination.fromJson(value)).toList();
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
      if (limit != null) 'limit': limit,
      if (page != null) 'page': page,
      if (pages != null) 'pages': pages,
      if (total != null) 'total': total,
      if (links != null) '_links': links,
    };
  }

  @override
  String toString() {
    return 'Pagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, ]';
  }
}
