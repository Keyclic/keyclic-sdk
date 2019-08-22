part of keyclic_sdk_api.api;

class PublicationPagination {
  PublicationPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.embedded,
    this.links,
  });

  PublicationPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    embedded = PublicationCollection.fromJson(json['_embedded']);
    links = PaginationLinks.fromJson(json['_links']);
  }

  int limit;

  int page;

  int pages;

  int total;

  PublicationCollection embedded;

  PaginationLinks links;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationPagination &&
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

  static List<PublicationPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? <PublicationPagination>[]
        : json.map((value) => PublicationPagination.fromJson(value)).toList();
  }

  static Map<String, PublicationPagination> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PublicationPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PublicationPagination.fromJson(value));
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
    return 'PublicationPagination[limit=$limit, page=$page, pages=$pages, total=$total, embedded=$embedded, links=$links, ]';
  }
}
