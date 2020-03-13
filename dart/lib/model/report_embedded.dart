part of keyclic_sdk_api.api;

class ReportEmbedded {
  ReportEmbedded({
    this.category,
    this.duration,
    this.place,
    this.stateTransitions,
    this.targetGroups,
    this.tracking,
    this.workflow,
  });

  factory ReportEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportEmbedded(
      category: Category.fromJson(json['category']),
      duration: OperationEmbeddedDuration.fromJson(json['duration']),
      place: Place.fromJson(json['place']),
      stateTransitions: json['stateTransitions'] is List
          ? List<String>.from(json['stateTransitions'])
          : null,
      targetGroups:
          ReportEmbeddedTargetGroups.listFromJson(json['targetGroups']),
      tracking: json['tracking'],
      workflow: DelegationEmbeddedWorkflow.fromJson(json['workflow']),
    );
  }

  Category category;

  OperationEmbeddedDuration duration;

  Place place;

  List<String> stateTransitions;

  List<ReportEmbeddedTargetGroups> targetGroups;

  String tracking;

  DelegationEmbeddedWorkflow workflow;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportEmbedded &&
        runtimeType == other.runtimeType &&
        category == other.category &&
        duration == other.duration &&
        place == other.place &&
        DeepCollectionEquality.unordered()
            .equals(stateTransitions, other.stateTransitions) &&
        DeepCollectionEquality.unordered()
            .equals(targetGroups, other.targetGroups) &&
        tracking == other.tracking &&
        workflow == other.workflow;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (stateTransitions is List && stateTransitions.isNotEmpty) {
      hashCode ^= stateTransitions
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (targetGroups is List && targetGroups.isNotEmpty) {
      hashCode ^= targetGroups
          .map((ReportEmbeddedTargetGroups element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= category?.hashCode ?? 0;
    hashCode ^= duration?.hashCode ?? 0;
    hashCode ^= place?.hashCode ?? 0;
    hashCode ^= tracking?.hashCode ?? 0;
    hashCode ^= workflow?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReportEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ReportEmbedded.fromJson(value))
            ?.toList() ??
        <ReportEmbedded>[];
  }

  static Map<String, ReportEmbedded> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ReportEmbedded>((String key, dynamic value) {
          return MapEntry(key, ReportEmbedded.fromJson(value));
        }) ??
        <String, ReportEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (category != null) 'category': category.toJson(),
      if (duration != null) 'duration': duration.toJson(),
      if (place != null) 'place': place.toJson(),
      if (stateTransitions != null) 'stateTransitions': stateTransitions,
      if (targetGroups != null) 'targetGroups': targetGroups,
      if (tracking != null) 'tracking': tracking,
      if (workflow != null) 'workflow': workflow.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReportEmbedded[category=$category, duration=$duration, place=$place, stateTransitions=$stateTransitions, targetGroups=$targetGroups, tracking=$tracking, workflow=$workflow, ]';
  }
}
