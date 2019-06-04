part of keyclic_sdk_api.api;

class ActivityPagination {
  ActivityPagination({
    this.duration,
    this.next,
    this.unseen,
    this.unread,
    this.results,
  });

  ActivityPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    duration = json['duration'];
    next = json['next'];
    unseen = json['unseen'];
    unread = json['unread'];
    results = Activity.listFromJson(json['results']);
  }

  String duration;

  String next;

  int unseen;

  int unread;

  List<Activity> results;

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
    return 'ActivityPagination[duration=$duration, next=$next, unseen=$unseen, unread=$unread, results=$results, ]';
  }

  static List<ActivityPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ActivityPagination>()
        : json.map((value) => ActivityPagination.fromJson(value)).toList();
  }

  static Map<String, ActivityPagination> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ActivityPagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ActivityPagination.fromJson(value));
    }
    return map;
  }
}
