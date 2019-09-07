part of keyclic_sdk_api.api;

class ContributionPagination extends Pagination {
  ContributionPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  ContributionPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    links = PaginationLinks.fromJson(json['_links']);
    embedded = ContributionCollection.fromJson(json['_embedded']);
  }

  int limit;

  int page;

  int pages;

  int total;

  PaginationLinks links;

  ContributionCollection embedded;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContributionPagination &&
        runtimeType == other.runtimeType &&
        limit == other.limit &&
        page == other.page &&
        pages == other.pages &&
        total == other.total &&
        links == other.links &&
        embedded == other.embedded;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      limit.hashCode ^
      page.hashCode ^
      pages.hashCode ^
      total.hashCode ^
      links.hashCode ^
      embedded.hashCode;

  static List<ContributionPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? <ContributionPagination>[]
        : json.map((value) => ContributionPagination.fromJson(value)).toList();
  }

  static Map<String, ContributionPagination> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ContributionPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ContributionPagination.fromJson(value));
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
      '_embedded': embedded,
    };
  }

  @override
  String toString() {
    return 'ContributionPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded, ]';
  }
}