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

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ActivityPagination &&
        runtimeType == other.runtimeType &&
        duration == other.duration &&
        next == other.next &&
        unseen == other.unseen &&
        unread == other.unread &&
        DeepCollectionEquality.unordered().equals(results, other.results);
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      duration.hashCode ^
      next.hashCode ^
      unseen.hashCode ^
      unread.hashCode ^
      results.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode);

  static List<ActivityPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? <ActivityPagination>[]
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
}
