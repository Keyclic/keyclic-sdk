part of keyclic_sdk_api.api;

class MemberPagination {
  MemberPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.embedded,
    this.links,
  });

  MemberPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    embedded = MemberCollection.fromJson(json['_embedded']);
    links = PaginationLinks.fromJson(json['_links']);
  }

  int limit;

  int page;

  int pages;

  int total;

  MemberCollection embedded;

  PaginationLinks links;

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
    return 'MemberPagination[limit=$limit, page=$page, pages=$pages, total=$total, embedded=$embedded, links=$links, ]';
  }

  static List<MemberPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? List<MemberPagination>()
        : json.map((value) => MemberPagination.fromJson(value)).toList();
  }

  static Map<String, MemberPagination> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MemberPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = MemberPagination.fromJson(value));
    }
    return map;
  }
}
