part of keyclic_sdk_api.api;

class PaginationLinks {
  PaginationLinks({
    this.first,
    this.last,
    this.next,
    this.self,
  });

  PaginationLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    first = PaginationLink.fromJson(json['first']);
    last = PaginationLink.fromJson(json['last']);
    next = PaginationLink.fromJson(json['next']);
    self = PaginationLink.fromJson(json['self']);
  }

  PaginationLink first;

  PaginationLink last;

  PaginationLink next;

  PaginationLink self;

  Map<String, dynamic> toJson() {
    return {
      'first': first,
      'last': last,
      'next': next,
      'self': self,
    };
  }

  @override
  String toString() {
    return 'PaginationLinks[first=$first, last=$last, next=$next, self=$self, ]';
  }

  static List<PaginationLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PaginationLinks>()
        : json.map((value) => PaginationLinks.fromJson(value)).toList();
  }

  static Map<String, PaginationLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PaginationLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PaginationLinks.fromJson(value));
    }
    return map;
  }
}
