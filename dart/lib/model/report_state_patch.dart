part of keyclic_sdk_api.api;

class ReportStatePatch {
  ReportStatePatch({
    this.transition,
  });

  ReportStatePatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    transition = json['transition'];
  }

  /// enum transitionEnum {  accept,  close,  hold,  progress,  refuse,  };
  String transition;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ReportStatePatch &&
        runtimeType == other.runtimeType &&
        transition == other.transition;
  }

  @override
  int get hashCode => 0 ^ transition.hashCode;

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

  Map<String, dynamic> toJson() {
    return {
      'transition': transition,
    };
  }

  @override
  String toString() {
    return 'ReportStatePatch[transition=$transition, ]';
  }
}
