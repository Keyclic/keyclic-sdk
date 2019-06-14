part of keyclic_sdk_api.api;

class FeedbackStatePatch {
  FeedbackStatePatch({
    this.transition,
  });

  FeedbackStatePatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    transition = json['transition'];
  }

  String transition;
  //enum transitionEnum {  deliver,  dispatch,  fail,  publish,  process,  success,  };

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackStatePatch &&
        runtimeType == other.runtimeType &&
        transition == other.transition;
  }

  @override
  int get hashCode => 0 ^ transition.hashCode;

  Map<String, dynamic> toJson() {
    return {
      'transition': transition,
    };
  }

  @override
  String toString() {
    return 'FeedbackStatePatch[transition=$transition, ]';
  }

  static List<FeedbackStatePatch> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FeedbackStatePatch>()
        : json.map((value) => FeedbackStatePatch.fromJson(value)).toList();
  }

  static Map<String, FeedbackStatePatch> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackStatePatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackStatePatch.fromJson(value));
    }
    return map;
  }
}
