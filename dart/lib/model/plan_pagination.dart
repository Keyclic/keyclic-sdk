part of keyclic_sdk_api.api;

class PlanPagination extends Pagination {
  PlanPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  factory PlanPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlanPagination(
      limit: json['limit'],
      page: json['page'],
      pages: json['pages'],
      total: json['total'],
      links: PaginationLinks.fromJson(json['_links']),
      embedded: PlanCollection.fromJson(json['_embedded']),
    );
  }

  int limit;

  int page;

  int pages;

  int total;

  PaginationLinks links;

  PlanCollection embedded;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanPagination &&
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
  int get hashCode {
    int hashCode = 0;

    hashCode ^= limit?.hashCode ?? 0;
    hashCode ^= page?.hashCode ?? 0;
    hashCode ^= pages?.hashCode ?? 0;
    hashCode ^= total?.hashCode ?? 0;
    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= embedded?.hashCode ?? 0;

    return hashCode;
  }

  static List<PlanPagination> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PlanPagination.fromJson(value))
            ?.toList() ??
        <PlanPagination>[];
  }

  static Map<String, PlanPagination> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PlanPagination>((String key, dynamic value) {
          return MapEntry(key, PlanPagination.fromJson(value));
        }) ??
        <String, PlanPagination>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (limit != null) 'limit': limit,
      if (page != null) 'page': page,
      if (pages != null) 'pages': pages,
      if (total != null) 'total': total,
      if (links != null) '_links': links.toJson(),
      if (embedded != null) '_embedded': embedded.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlanPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded, ]';
  }
}
