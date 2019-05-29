part of keyclic_sdk_api.api;

class ActivityAggregatedPagination {
  ActivityAggregatedPagination();

  ActivityAggregatedPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    duration = json['duration'];
    next = json['next'];
    unseen = json['unseen'];
    unread = json['unread'];
    results = ActivityGroup.listFromJson(json['results']);
  }

  String duration;

  String next;

  int unseen;

  int unread;

  List<ActivityGroup> results;

  Map<String, dynamic> toJson() {
    return {
      'duration': duration,
      'next': next,
      'unseen': unseen,
      'unread': unread,
      'results': results,
    };
  }

  @override
  String toString() {
    return 'ActivityAggregatedPagination[duration=$duration, next=$next, unseen=$unseen, unread=$unread, results=$results, ]';
  }

  static List<ActivityAggregatedPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ActivityAggregatedPagination>()
        : json
            .map((value) => ActivityAggregatedPagination.fromJson(value))
            .toList();
  }

  static Map<String, ActivityAggregatedPagination> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ActivityAggregatedPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ActivityAggregatedPagination.fromJson(value));
    }
    return map;
  }
}
