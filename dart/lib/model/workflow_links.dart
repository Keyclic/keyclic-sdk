part of keyclic_sdk_api.api;

class WorkflowLinks {
  WorkflowLinks({
    this.self,
  });

  factory WorkflowLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return WorkflowLinks(
      self: WorkflowLinksSelf.fromJson(json['self']),
    );
  }

  WorkflowLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WorkflowLinks &&
        runtimeType == other.runtimeType &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<WorkflowLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <WorkflowLinks>[]
        : json.map((dynamic value) => WorkflowLinks.fromJson(value)).toList();
  }

  static Map<String, WorkflowLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkflowLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = WorkflowLinks.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (self != null) 'self': self,
    };
  }

  @override
  String toString() {
    return 'WorkflowLinks[self=$self, ]';
  }
}
