part of keyclic_sdk_api.api;

class ActivityAggregatedPagination {
  ActivityAggregatedPagination({
    this.duration,
    this.next,
    this.unseen,
    this.unread,
    this.results,
  });

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

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ActivityAggregatedPagination &&
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

  static List<ActivityAggregatedPagination> listFromJson(List<dynamic> json) {
    return json == null
        ? <ActivityAggregatedPagination>[]
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
}
