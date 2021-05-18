part of keyclic_sdk_api.api;

class PaginationLinks {
  PaginationLinks({
    this.first,
    this.last,
    this.next,
    this.self,
  });

  factory PaginationLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PaginationLinks(
      first: PaginationLink.fromJson(json['first']),
      last: PaginationLink.fromJson(json['last']),
      next: PaginationLink.fromJson(json['next']),
      self: PaginationLink.fromJson(json['self']),
    );
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
  int get hashCode {
    int hashCode = 0;

    hashCode ^= first?.hashCode ?? 0;
    hashCode ^= last?.hashCode ?? 0;
    hashCode ^= next?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<PaginationLinks> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PaginationLinks.fromJson(value))
            ?.toList() ??
        <PaginationLinks>[];
  }

  static Map<String, PaginationLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PaginationLinks>((String key, dynamic value) {
          return MapEntry(key, PaginationLinks.fromJson(value));
        }) ??
        <String, PaginationLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (first != null) 'first': first.toJson(),
      if (last != null) 'last': last.toJson(),
      if (next != null) 'next': next.toJson(),
      if (self != null) 'self': self.toJson(),
    };
  }

  @override
  String toString() {
    return 'PaginationLinks[first=$first, last=$last, next=$next, self=$self, ]';
  }
}
