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

  /// enum transitionEnum {  deliver,  dispatch,  fail,  process,  publish,  success,  };
  String transition;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackStatePatch &&
        runtimeType == other.runtimeType &&
        transition == other.transition;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ transition.hashCode;

  static List<FeedbackStatePatch> listFromJson(List<dynamic> json) {
    return json == null
        ? <FeedbackStatePatch>[]
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

  Map<String, dynamic> toJson() {
    return {
      'transition': transition,
    };
  }

  @override
  String toString() {
    return 'FeedbackStatePatch[transition=$transition, ]';
  }
}
