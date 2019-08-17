part of keyclic_sdk_api.api;

class LogEntryPagination {
  LogEntryPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.embedded,
    this.links,
  });

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

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is LogEntryPagination && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<LogEntryPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? List<LogEntryPagination>()
        : json.map((value) => LogEntryPagination.fromJson(value)).toList();
  }

  static Map<String, LogEntryPagination> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, LogEntryPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = LogEntryPagination.fromJson(value));
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
    return 'LogEntryPagination[limit=$limit, page=$page, pages=$pages, total=$total, embedded=$embedded, links=$links, ]';
  }
}
