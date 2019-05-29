part of keyclic_sdk_api.api;

class DocumentPagination {
  DocumentPagination();

  DocumentPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    embedded = DocumentCollection.fromJson(json['_embedded']);
    links = PaginationLinks.fromJson(json['_links']);
  }

  int limit;

  int page;

  int pages;

  int total;

  DocumentCollection embedded;

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
    return 'DocumentPagination[limit=$limit, page=$page, pages=$pages, total=$total, embedded=$embedded, links=$links, ]';
  }

  static List<DocumentPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DocumentPagination>()
        : json.map((value) => DocumentPagination.fromJson(value)).toList();
  }

  static Map<String, DocumentPagination> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DocumentPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DocumentPagination.fromJson(value));
    }
    return map;
  }
}
