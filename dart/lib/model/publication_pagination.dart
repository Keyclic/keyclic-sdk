part of keyclic_sdk_api.api;

class PublicationPagination {
  PublicationPagination();

  PublicationPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    embedded = PublicationCollection.fromJson(json['_embedded']);
    links = PaginationLinks.fromJson(json['_links']);
  }

  int limit;

  int page;

  int pages;

  int total;

  PublicationCollection embedded;

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
    return 'PublicationPagination[limit=$limit, page=$page, pages=$pages, total=$total, embedded=$embedded, links=$links, ]';
  }

  static List<PublicationPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PublicationPagination>()
        : json.map((value) => PublicationPagination.fromJson(value)).toList();
  }

  static Map<String, PublicationPagination> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PublicationPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PublicationPagination.fromJson(value));
    }
    return map;
  }
}
