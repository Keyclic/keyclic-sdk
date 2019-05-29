part of keyclic_sdk_api.api;

class PersonPagination {
  PersonPagination();

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
}
