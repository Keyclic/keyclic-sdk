part of keyclic_sdk_api.api;

class InvitationDateTime {
  InvitationDateTime();

  factory InvitationDateTime.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InvitationDateTime();
  }

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InvitationDateTime && runtimeType == other.runtimeType;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    return hashCode;
  }

  static List<InvitationDateTime> listFromJson(List<dynamic> json) {
    return json == null
        ? <InvitationDateTime>[]
        : json
            .map((dynamic value) => InvitationDateTime.fromJson(value))
            .toList();
  }

  static Map<String, InvitationDateTime> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, InvitationDateTime>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = InvitationDateTime.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {};
  }

  @override
  String toString() {
    return 'InvitationDateTime[]';
  }
}
