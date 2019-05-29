part of keyclic_sdk_api.api;

class FeedbackEmbedded {
  FeedbackEmbedded();

  FeedbackEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    stateTransitions = (json['stateTransitions'] as List)
        ?.map((item) => item as String)
        ?.toList();
    tracking = json['tracking'];
  }

  List<String> stateTransitions;

  String tracking;

  Map<String, dynamic> toJson() {
    return {
      'stateTransitions': stateTransitions,
      'tracking': tracking,
    };
  }

  @override
  String toString() {
    return 'FeedbackEmbedded[stateTransitions=$stateTransitions, tracking=$tracking, ]';
  }

  static List<FeedbackEmbedded> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FeedbackEmbedded>()
        : json.map((value) => FeedbackEmbedded.fromJson(value)).toList();
  }

  static Map<String, FeedbackEmbedded> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedbackEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackEmbedded.fromJson(value));
    }
    return map;
  }
}
