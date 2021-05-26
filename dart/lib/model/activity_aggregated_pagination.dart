part of keyclic_sdk_api.api;

class ActivityAggregatedPagination {
  ActivityAggregatedPagination({
    this.duration,
    this.next,
    this.unseen,
    this.unread,
    this.results,
  });

  factory ActivityAggregatedPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ActivityAggregatedPagination(
      duration: json['duration'],
      next: json['next'],
      unseen: json['unseen'],
      unread: json['unread'],
      results: ActivityGroup.listFromJson(json['results']),
    );
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
  int get hashCode {
    int hashCode = 0;

    if (results is List && results.isNotEmpty) {
      hashCode ^= results
          .map((ActivityGroup element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= duration?.hashCode ?? 0;
    hashCode ^= next?.hashCode ?? 0;
    hashCode ^= unseen?.hashCode ?? 0;
    hashCode ^= unread?.hashCode ?? 0;

    return hashCode;
  }

  static List<ActivityAggregatedPagination> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => ActivityAggregatedPagination.fromJson(value))
            ?.toList() ??
        <ActivityAggregatedPagination>[];
  }

  static Map<String, ActivityAggregatedPagination> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ActivityAggregatedPagination>(
            (String key, dynamic value) {
          return MapEntry(key, ActivityAggregatedPagination.fromJson(value));
        }) ??
        <String, ActivityAggregatedPagination>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (duration != null) 'duration': duration,
      if (next != null) 'next': next,
      if (unseen != null) 'unseen': unseen,
      if (unread != null) 'unread': unread,
      if (results != null) 'results': results,
    };
  }

  @override
  String toString() {
    return 'ActivityAggregatedPagination[duration=$duration, next=$next, unseen=$unseen, unread=$unread, results=$results, ]';
  }
}
