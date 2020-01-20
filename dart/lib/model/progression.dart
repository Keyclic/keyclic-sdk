part of keyclic_sdk_api.api;

class Progression {
  Progression({
    this.resolved,
    this.total,
  });

  factory Progression.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Progression(
      resolved: json['resolved'],
      total: json['total'],
    );
  }

  int resolved;

  int total;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Progression &&
        runtimeType == other.runtimeType &&
        resolved == other.resolved &&
        total == other.total;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= resolved?.hashCode ?? 0;
    hashCode ^= total?.hashCode ?? 0;

    return hashCode;
  }

  static List<Progression> listFromJson(List<dynamic> json) {
    return json == null
        ? <Progression>[]
        : json.map((dynamic value) => Progression.fromJson(value)).toList();
  }

  static Map<String, Progression> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Progression>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = Progression.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (resolved != null) 'resolved': resolved,
      if (total != null) 'total': total,
    };
  }

  @override
  String toString() {
    return 'Progression[resolved=$resolved, total=$total, ]';
  }
}
