part of keyclic_sdk_api.api;

class LogEntryPagination {
  LogEntryPagination();

  LogEntryPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    embedded = LogEntryCollection.fromJson(json['_embedded']);
    links = PaginationLinks.fromJson(json['_links']);
  }

  int limit;

  int page;

  int pages;

  int total;

  LogEntryCollection embedded;

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
    return 'LogEntryPagination[limit=$limit, page=$page, pages=$pages, total=$total, embedded=$embedded, links=$links, ]';
  }

  static List<LogEntryPagination> listFromJson(List<dynamic> json) {
    return json == null ? List<LogEntryPagination>() : json.map((value) => LogEntryPagination.fromJson(value)).toList();
  }

  static Map<String, LogEntryPagination> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LogEntryPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LogEntryPagination.fromJson(value));
    }
    return map;
  }
}
