part of keyclic_sdk_api.api;

class NodePath {
  NodePath({
    this.id,
    this.name,
  });

  factory NodePath.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NodePath(
      id: json['id'],
      name: json['name'],
    );
  }

  String id;

  String name;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NodePath &&
        runtimeType == other.runtimeType &&
        id == other.id &&
        name == other.name;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;

    return hashCode;
  }

  static List<NodePath> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => NodePath.fromJson(value))?.toList() ??
        <NodePath>[];
  }

  static Map<String, NodePath> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, NodePath>((String key, dynamic value) {
          return MapEntry(key, NodePath.fromJson(value));
        }) ??
        <String, NodePath>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }

  @override
  String toString() {
    return 'NodePath[id=$id, name=$name, ]';
  }
}
