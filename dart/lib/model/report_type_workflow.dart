part of keyclic_sdk_api.api;

class ReportTypeWorkflow {
  ReportTypeWorkflow({
    this.createdAt,
    this.description,
    this.end,
    this.id,
    this.name,
    this.start,
    this.states,
    this.transitions,
    this.type,
    this.updatedAt,
  });

  factory ReportTypeWorkflow.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }

    return ReportTypeWorkflow(
      createdAt: createdAt,
      description: json['description'],
      end: WorkflowState.fromJson(json['end']),
      id: json['id'],
      name: json['name'],
      start: WorkflowState.fromJson(json['start']),
      states: WorkflowState.listFromJson(json['states']),
      transitions: WorkflowTransition.listFromJson(json['transitions']),
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  DateTime createdAt;

  String description;

  WorkflowState end;

  String id;

  String name;

  WorkflowState start;

  List<WorkflowState> states;

  List<WorkflowTransition> transitions;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportTypeWorkflow &&
        runtimeType == other.runtimeType &&
        createdAt == other.createdAt &&
        description == other.description &&
        end == other.end &&
        id == other.id &&
        name == other.name &&
        start == other.start &&
        DeepCollectionEquality.unordered().equals(states, other.states) &&
        DeepCollectionEquality.unordered()
            .equals(transitions, other.transitions) &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (states is List && states.isNotEmpty) {
      hashCode ^= states
          .map((WorkflowState element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (transitions is List && transitions.isNotEmpty) {
      hashCode ^= transitions
          .map((WorkflowTransition element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= end?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= start?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReportTypeWorkflow> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ReportTypeWorkflow.fromJson(value))
            ?.toList() ??
        <ReportTypeWorkflow>[];
  }

  static Map<String, ReportTypeWorkflow> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ReportTypeWorkflow>((String key, dynamic value) {
          return MapEntry(key, ReportTypeWorkflow.fromJson(value));
        }) ??
        <String, ReportTypeWorkflow>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'createdAt': createdAt?.toUtc()?.toIso8601String(),
      'description': description,
      'end': end?.toJson(),
      'id': id,
      'name': name,
      'start': start?.toJson(),
      'states': states,
      'transitions': transitions,
      'type': type,
      'updatedAt': updatedAt?.toUtc()?.toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'ReportTypeWorkflow[createdAt=$createdAt, description=$description, end=$end, id=$id, name=$name, start=$start, states=$states, transitions=$transitions, type=$type, updatedAt=$updatedAt, ]';
  }
}
