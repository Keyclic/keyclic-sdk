part of keyclic_sdk_api.api;

class BusinessActivityPagination extends Pagination {
  BusinessActivityPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  BusinessActivityPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    links = PaginationLinks.fromJson(json['_links']);
    embedded = BusinessActivityCollection.fromJson(json['_embedded']);
  }

  int limit;

  int page;

  int pages;

  int total;

  PaginationLinks links;

  BusinessActivityCollection embedded;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityPagination &&
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

  static List<BusinessActivityPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? <BusinessActivityPagination>[]
        : json
            .map((dynamic value) => BusinessActivityPagination.fromJson(value))
            .toList();
  }

  static Map<String, BusinessActivityPagination> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, BusinessActivityPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = BusinessActivityPagination.fromJson(value));
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
    return 'BusinessActivityPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded, ]';
  }
}
