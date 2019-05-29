part of keyclic_sdk_api.api;

class ReportEmbedded {
  ReportEmbedded();

  ReportEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    stateTransitions = (json['stateTransitions'] as List)
        ?.map((item) => item as String)
        ?.toList();
    targetGroups =
        ReportEmbeddedTargetGroups.listFromJson(json['targetGroups']);
    tracking = json['tracking'];
  }

  List<String> stateTransitions;

  List<ReportEmbeddedTargetGroups> targetGroups;

  String tracking;

  Map<String, dynamic> toJson() {
    return {
      'stateTransitions': stateTransitions,
      'targetGroups': targetGroups,
      'tracking': tracking,
    };
  }

  @override
  String toString() {
    return 'ReportEmbedded[stateTransitions=$stateTransitions, targetGroups=$targetGroups, tracking=$tracking, ]';
  }

  static List<ReportEmbedded> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReportEmbedded>()
        : json.map((value) => ReportEmbedded.fromJson(value)).toList();
  }

  static Map<String, ReportEmbedded> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReportEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportEmbedded.fromJson(value));
    }
    return map;
  }
}
