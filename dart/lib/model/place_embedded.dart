part of keyclic_sdk_api.api;

class PlaceEmbedded {
  PlaceEmbedded({
    this.children,
    this.organization,
    this.path,
  });

  factory PlaceEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceEmbedded(
      children: Node.listFromJson(json['children']),
      organization: Organization.fromJson(json['organization']),
      path: NodePath.listFromJson(json['path']),
    );
  }

  List<Node> children;

  Organization organization;

  List<NodePath> path;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceEmbedded &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(children, other.children) &&
        organization == other.organization &&
        DeepCollectionEquality.unordered().equals(path, other.path);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (children is List && children.isNotEmpty) {
      hashCode ^= children
          .map((Node element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (path is List && path.isNotEmpty) {
      hashCode ^= path
          .map((NodePath element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= organization?.hashCode ?? 0;

    return hashCode;
  }

  static List<PlaceEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PlaceEmbedded.fromJson(value))
            ?.toList() ??
        <PlaceEmbedded>[];
  }

  static Map<String, PlaceEmbedded> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PlaceEmbedded>((String key, dynamic value) {
          return MapEntry(key, PlaceEmbedded.fromJson(value));
        }) ??
        <String, PlaceEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (children != null) 'children': children,
      if (organization != null) 'organization': organization.toJson(),
      if (path != null) 'path': path,
    };
  }

  @override
  String toString() {
    return 'PlaceEmbedded[children=$children, organization=$organization, path=$path, ]';
  }
}
