part of keyclic_sdk_api.api;

class BusinessActivityPagination {
  BusinessActivityPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.embedded,
    this.links,
  });

  BusinessActivityPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    embedded = BusinessActivityCollection.fromJson(json['_embedded']);
    links = PaginationLinks.fromJson(json['_links']);
  }

  int limit;

  int page;

  int pages;

  int total;

  BusinessActivityCollection embedded;

  PaginationLinks links;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityPagination &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

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
    return 'BusinessActivityPagination[limit=$limit, page=$page, pages=$pages, total=$total, embedded=$embedded, links=$links, ]';
  }

  static List<BusinessActivityPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? List<BusinessActivityPagination>()
        : json
            .map((value) => BusinessActivityPagination.fromJson(value))
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
}
