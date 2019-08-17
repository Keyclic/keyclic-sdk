part of keyclic_sdk_api.api;

class WebhookPagination {
  WebhookPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.embedded,
    this.links,
  });

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

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is WebhookPagination && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

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
}
