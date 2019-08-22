part of keyclic_sdk_api.api;

class PaginationLink {
  PaginationLink({
    this.href,
  });

  PaginationLink.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
  }

  String href;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PaginationLink &&
        runtimeType == other.runtimeType &&
        href == other.href;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ href.hashCode;

  static List<PaginationLink> listFromJson(List<dynamic> json) {
    return json == null
        ? <PaginationLink>[]
        : json.map((value) => PaginationLink.fromJson(value)).toList();
  }

  static Map<String, PaginationLink> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PaginationLink>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PaginationLink.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
    };
  }

  @override
  String toString() {
    return 'PaginationLink[href=$href, ]';
  }
}
