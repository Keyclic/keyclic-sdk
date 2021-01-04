part of keyclic_sdk_api.api;

class PlaceEmbedded {
  PlaceEmbedded({
    this.children,
    this.documentTypes,
    this.organization,
    this.path,
    this.workflow,
  });

  factory PlaceEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceEmbedded(
      children: Place.listFromJson(json['children']),
      documentTypes: DocumentType.listFromJson(json['documentTypes']),
      organization: Organization.fromJson(json['organization']),
      path: NodePath.listFromJson(json['path']),
      workflow: DelegationEmbeddedWorkflow.fromJson(json['workflow']),
    );
  }

  List<Place> children;

  List<DocumentType> documentTypes;

  Organization organization;

  List<NodePath> path;

  DelegationEmbeddedWorkflow workflow;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceEmbedded &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(children, other.children) &&
        DeepCollectionEquality.unordered()
            .equals(documentTypes, other.documentTypes) &&
        organization == other.organization &&
        DeepCollectionEquality.unordered().equals(path, other.path) &&
        workflow == other.workflow;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (children is List && children.isNotEmpty) {
      hashCode ^= children
          .map((Place element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (documentTypes is List && documentTypes.isNotEmpty) {
      hashCode ^= documentTypes
          .map((DocumentType element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (path is List && path.isNotEmpty) {
      hashCode ^= path
          .map((NodePath element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= workflow?.hashCode ?? 0;

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
      if (documentTypes != null) 'documentTypes': documentTypes,
      if (organization != null) 'organization': organization.toJson(),
      if (path != null) 'path': path,
      if (workflow != null) 'workflow': workflow.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlaceEmbedded[children=$children, documentTypes=$documentTypes, organization=$organization, path=$path, workflow=$workflow, ]';
  }
}
