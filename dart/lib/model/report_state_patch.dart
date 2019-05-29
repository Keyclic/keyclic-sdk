part of keyclic_sdk_api.api;

class ReportStatePatch {
  ReportStatePatch();

  ReportStatePatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    transition = json['transition'];
  }

  String transition;
  //enum transitionEnum {  accept,  refuse,  hold,  progress,  close,  };

  Map<String, dynamic> toJson() {
    return {
      'transition': transition,
    };
  }

  @override
  String toString() {
    return 'ReportStatePatch[transition=$transition, ]';
  }

  static List<ReportStatePatch> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReportStatePatch>()
        : json.map((value) => ReportStatePatch.fromJson(value)).toList();
  }

  static Map<String, ReportStatePatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReportStatePatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportStatePatch.fromJson(value));
    }
    return map;
  }
}
