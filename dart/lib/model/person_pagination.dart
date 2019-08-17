part of keyclic_sdk_api.api;

class PersonPagination {
  PersonPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.embedded,
    this.links,
  });

  PersonPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    embedded = PersonCollection.fromJson(json['_embedded']);
    links = PaginationLinks.fromJson(json['_links']);
  }

  int limit;

  int page;

  int pages;

  int total;

  PersonCollection embedded;

  PaginationLinks links;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is PersonPagination && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<PersonPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PersonPagination>()
        : json.map((value) => PersonPagination.fromJson(value)).toList();
  }

  static Map<String, PersonPagination> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PersonPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PersonPagination.fromJson(value));
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
    return 'PersonPagination[limit=$limit, page=$page, pages=$pages, total=$total, embedded=$embedded, links=$links, ]';
  }
}
