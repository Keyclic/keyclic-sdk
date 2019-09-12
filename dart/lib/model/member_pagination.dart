part of keyclic_sdk_api.api;

class MemberPagination extends Pagination {
  MemberPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  MemberPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    links = PaginationLinks.fromJson(json['_links']);
    embedded = MemberCollection.fromJson(json['_embedded']);
  }

  int limit;

  int page;

  int pages;

  int total;

  PaginationLinks links;

  MemberCollection embedded;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberPagination &&
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

  static List<MemberPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? <MemberPagination>[]
        : json
            .map((dynamic value) => MemberPagination.fromJson(value))
            .toList();
  }

  static Map<String, MemberPagination> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MemberPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = MemberPagination.fromJson(value));
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
    return 'MemberPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded, ]';
  }
}
