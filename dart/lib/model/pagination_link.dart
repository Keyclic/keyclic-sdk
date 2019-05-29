part of keyclic_sdk_api.api;

class PaginationLink {
  PaginationLink();

  PaginationLink.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
  }

  String href;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
    };
  }

  @override
  String toString() {
    return 'PaginationLink[href=$href, ]';
  }

  static List<PaginationLink> listFromJson(List<dynamic> json) {
    return json == null ? List<PaginationLink>() : json.map((value) => PaginationLink.fromJson(value)).toList();
  }

  static Map<String, PaginationLink> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PaginationLink>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PaginationLink.fromJson(value));
    }
    return map;
  }
}
