part of keyclic_sdk_api.api;

class ReviewRequestPagination extends Pagination {
  ReviewRequestPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  factory ReviewRequestPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestPagination(
      limit: json['limit'],
      page: json['page'],
      pages: json['pages'],
      total: json['total'],
      links: PaginationLinks.fromJson(json['_links']),
      embedded: ReviewRequestCollection.fromJson(json['_embedded']),
    );
  }

  int limit;

  int page;

  int pages;

  int total;

  PaginationLinks links;

  ReviewRequestCollection embedded;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestPagination &&
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

  static List<ReviewRequestPagination> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ReviewRequestPagination.fromJson(value))
            ?.toList() ??
        <ReviewRequestPagination>[];
  }

  static Map<String, ReviewRequestPagination> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, ReviewRequestPagination>((String key, dynamic value) {
          return MapEntry(key, ReviewRequestPagination.fromJson(value));
        }) ??
        <String, ReviewRequestPagination>{};
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
    return 'ReviewRequestPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded, ]';
  }
}
