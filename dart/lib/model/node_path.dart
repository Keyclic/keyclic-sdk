part of keyclic_sdk_api.api;

class NodePath {
  NodePath({
    this.id,
    this.name,
  });

  NodePath.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    id = json['id'];
    name = json['name'];
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

    hashCode ^= (id?.hashCode ?? 0);
    hashCode ^= (name?.hashCode ?? 0);

    return hashCode;
  }

  static List<NodePath> listFromJson(List<dynamic> json) {
    return json == null
        ? <NodePath>[]
        : json.map((dynamic value) => NodePath.fromJson(value)).toList();
  }

  static Map<String, NodePath> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NodePath>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = NodePath.fromJson(value));
    }

    return map;
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
