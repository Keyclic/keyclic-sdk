part of keyclic_sdk_api.api;

class DelegationPagination {
  DelegationPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.embedded,
    this.links,
  });

  DelegationPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    embedded = DelegationCollection.fromJson(json['_embedded']);
    links = PaginationLinks.fromJson(json['_links']);
  }

  int limit;

  int page;

  int pages;

  int total;

  DelegationCollection embedded;

  PaginationLinks links;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationPagination && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<DelegationPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DelegationPagination>()
        : json.map((value) => DelegationPagination.fromJson(value)).toList();
  }

  static Map<String, DelegationPagination> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationPagination.fromJson(value));
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
    return 'DelegationPagination[limit=$limit, page=$page, pages=$pages, total=$total, embedded=$embedded, links=$links, ]';
  }
}
