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

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PaginationLinks &&
        runtimeType == other.runtimeType &&
        first == other.first &&
        last == other.last &&
        next == other.next &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^ first.hashCode ^ last.hashCode ^ next.hashCode ^ self.hashCode;

  static List<PaginationLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <PaginationLinks>[]
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
}
