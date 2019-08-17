part of keyclic_sdk_api.api;

class OrganizationPagination {
  OrganizationPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.embedded,
    this.links,
  });

  OrganizationPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    embedded = OrganizationCollection.fromJson(json['_embedded']);
    links = PaginationLinks.fromJson(json['_links']);
  }

  int limit;

  int page;

  int pages;

  int total;

  OrganizationCollection embedded;

  PaginationLinks links;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPagination && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<OrganizationPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OrganizationPagination>()
        : json.map((value) => OrganizationPagination.fromJson(value)).toList();
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
      '_embedded': embedded,
      '_links': links,
    };
  }

  @override
  String toString() {
    return 'OrganizationPagination[limit=$limit, page=$page, pages=$pages, total=$total, embedded=$embedded, links=$links, ]';
  }
}
