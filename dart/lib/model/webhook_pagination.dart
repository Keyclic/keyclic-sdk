part of keyclic_sdk_api.api;

class WebhookPagination {
  WebhookPagination();

  WebhookPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
    total = json['total'];
    embedded = WebhookCollection.fromJson(json['_embedded']);
    links = PaginationLinks.fromJson(json['_links']);
  }

  int limit;

  int page;

  int pages;

  int total;

  WebhookCollection embedded;

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
    return 'WebhookPagination[limit=$limit, page=$page, pages=$pages, total=$total, embedded=$embedded, links=$links, ]';
  }

  static List<WebhookPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? List<WebhookPagination>()
        : json.map((value) => WebhookPagination.fromJson(value)).toList();
  }

  static Map<String, WebhookPagination> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebhookPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = WebhookPagination.fromJson(value));
    }
    return map;
  }
}
