part of keyclic_sdk_api.api;

class FilePagination extends Pagination {
  FilePagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  factory FilePagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FilePagination(
      limit: json['limit'],
      page: json['page'],
      pages: json['pages'],
      total: json['total'],
      links: PaginationLinks.fromJson(json['_links']),
      embedded: FileCollection.fromJson(json['_embedded']),
    );
  }

  int limit;

  int page;

  int pages;

  int total;

  PaginationLinks links;

  FileCollection embedded;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FilePagination &&
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

  static List<FilePagination> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => FilePagination.fromJson(value))
            ?.toList() ??
        <FilePagination>[];
  }

  static Map<String, FilePagination> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, FilePagination>((String key, dynamic value) {
          return MapEntry(key, FilePagination.fromJson(value));
        }) ??
        <String, FilePagination>{};
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
    return 'FilePagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded, ]';
  }
}
