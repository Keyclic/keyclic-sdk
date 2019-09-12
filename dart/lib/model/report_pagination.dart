part of keyclic_sdk_api.api;

class ReportPagination extends Pagination {
  ReportPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  ReportPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    links = PaginationLinks.fromJson(json['_links']);
    embedded = ReportCollection.fromJson(json['_embedded']);
  }

  int limit;

  int page;

  int pages;

  int total;

  PaginationLinks links;

  ReportCollection embedded;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportPagination &&
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

    hashCode ^= (limit?.hashCode ?? 0);
    hashCode ^= (page?.hashCode ?? 0);
    hashCode ^= (pages?.hashCode ?? 0);
    hashCode ^= (total?.hashCode ?? 0);
    hashCode ^= (links?.hashCode ?? 0);
    hashCode ^= (embedded?.hashCode ?? 0);

    return hashCode;
  }

  static List<ReportPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReportPagination>[]
        : json
            .map((dynamic value) => ReportPagination.fromJson(value))
            .toList();
  }

  static Map<String, ReportPagination> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReportPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportPagination.fromJson(value));
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
    return 'ReportPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded, ]';
  }
}
