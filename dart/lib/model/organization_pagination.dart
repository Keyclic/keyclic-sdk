part of keyclic_sdk_api.api;

class OrganizationPagination extends Pagination {
  OrganizationPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  OrganizationPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    links = PaginationLinks.fromJson(json['_links']);
    embedded = OrganizationCollection.fromJson(json['_embedded']);
  }

  int limit;

  int page;

  int pages;

  int total;

  PaginationLinks links;

  OrganizationCollection embedded;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPagination &&
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

  static List<OrganizationPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? <OrganizationPagination>[]
        : json
            .map((dynamic value) => OrganizationPagination.fromJson(value))
            .toList();
  }

  static Map<String, OrganizationPagination> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OrganizationPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationPagination.fromJson(value));
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
    return 'OrganizationPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded, ]';
  }
}
