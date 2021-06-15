part of keyclic_sdk_api.api;

class OperationPagination extends Pagination {
  OperationPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  factory OperationPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationPagination(
      limit: json['limit'],
      page: json['page'],
      pages: json['pages'],
      total: json['total'],
      links: PaginationLinks.fromJson(json['_links']),
      embedded: OperationCollection.fromJson(json['_embedded']),
    );
  }

  int limit;

  int page;

  int pages;

  int total;

  PaginationLinks links;

  OperationCollection embedded;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationPagination &&
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

  static List<OperationPagination> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OperationPagination.fromJson(value))
            ?.toList() ??
        <OperationPagination>[];
  }

  static Map<String, OperationPagination> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OperationPagination>((String key, dynamic value) {
          return MapEntry(key, OperationPagination.fromJson(value));
        }) ??
        <String, OperationPagination>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'limit': limit,
      'page': page,
      'pages': pages,
      'total': total,
      '_links': links?.toJson(),
      '_embedded': embedded?.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded, ]';
  }
}
