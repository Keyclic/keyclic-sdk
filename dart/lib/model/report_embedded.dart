part of keyclic_sdk_api.api;

class ReportEmbedded {
  ReportEmbedded({
    this.assignment,
    this.category,
    this.children,
    this.documents,
    this.feedback,
    this.place,
    this.targetGroups,
    this.workflow,
  });

  factory ReportEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportEmbedded(
      assignment: Assignment.fromJson(json['assignment']),
      category: Category.fromJson(json['category']),
      children: Operation.listFromJson(json['children']),
      documents: Document.listFromJson(json['documents']),
      feedback: Feedback.fromJson(json['feedback']),
      place: Place.fromJson(json['place']),
      targetGroups:
          PlaceEmbeddedTargetGroups.listFromJson(json['targetGroups']),
      workflow: AssignmentEmbeddedWorkflow.fromJson(json['workflow']),
    );
  }

  Assignment assignment;

  Category category;

  List<Operation> children;

  List<Document> documents;

  Feedback feedback;

  Place place;

  List<PlaceEmbeddedTargetGroups> targetGroups;

  AssignmentEmbeddedWorkflow workflow;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportEmbedded &&
        runtimeType == other.runtimeType &&
        assignment == other.assignment &&
        category == other.category &&
        DeepCollectionEquality.unordered().equals(children, other.children) &&
        DeepCollectionEquality.unordered().equals(documents, other.documents) &&
        feedback == other.feedback &&
        place == other.place &&
        DeepCollectionEquality.unordered()
            .equals(targetGroups, other.targetGroups) &&
        workflow == other.workflow;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (children is List && children.isNotEmpty) {
      hashCode ^= children
          .map((Operation element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (documents is List && documents.isNotEmpty) {
      hashCode ^= documents
          .map((Document element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (targetGroups is List && targetGroups.isNotEmpty) {
      hashCode ^= targetGroups
          .map((PlaceEmbeddedTargetGroups element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= assignment?.hashCode ?? 0;
    hashCode ^= category?.hashCode ?? 0;
    hashCode ^= feedback?.hashCode ?? 0;
    hashCode ^= place?.hashCode ?? 0;
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
      if (assignment != null) 'assignment': assignment.toJson(),
      if (category != null) 'category': category.toJson(),
      if (children != null) 'children': children,
      if (documents != null) 'documents': documents,
      if (feedback != null) 'feedback': feedback.toJson(),
      if (place != null) 'place': place.toJson(),
      if (targetGroups != null) 'targetGroups': targetGroups,
      if (workflow != null) 'workflow': workflow.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReportEmbedded[assignment=$assignment, category=$category, children=$children, documents=$documents, feedback=$feedback, place=$place, targetGroups=$targetGroups, workflow=$workflow, ]';
  }
}
