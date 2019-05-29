part of keyclic_sdk_api.api;

class PlacePagination {
  PlacePagination();

  PlacePagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    embedded = PlaceCollection.fromJson(json['_embedded']);
    links = PaginationLinks.fromJson(json['_links']);
  }

  int limit;

  int page;

  int pages;

  int total;

  PlaceCollection embedded;

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
    return 'PlacePagination[limit=$limit, page=$page, pages=$pages, total=$total, embedded=$embedded, links=$links, ]';
  }

  static List<PlacePagination> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PlacePagination>()
        : json.map((value) => PlacePagination.fromJson(value)).toList();
  }

  static Map<String, PlacePagination> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlacePagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PlacePagination.fromJson(value));
    }
    return map;
  }
}
