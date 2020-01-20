part of keyclic_sdk_api.api;

class Preferences {
  Preferences({
    this.notification,
    this.offline,
    this.public,
    this.reference,
    this.reviewEnabled,
  });

  factory Preferences.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Preferences(
      notification: Notification.fromJson(json['notification']),
      offline: json['offline'],
      public: json['public'],
      reference: Reference.fromJson(json['reference']),
      reviewEnabled: json['reviewEnabled'],
    );
  }

  Notification notification;

  bool offline;

  bool public;

  Reference reference;

  bool reviewEnabled;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Preferences &&
        runtimeType == other.runtimeType &&
        notification == other.notification &&
        offline == other.offline &&
        public == other.public &&
        reference == other.reference &&
        reviewEnabled == other.reviewEnabled;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= notification?.hashCode ?? 0;
    hashCode ^= offline?.hashCode ?? 0;
    hashCode ^= public?.hashCode ?? 0;
    hashCode ^= reference?.hashCode ?? 0;
    hashCode ^= reviewEnabled?.hashCode ?? 0;

    return hashCode;
  }

  static List<Preferences> listFromJson(List<dynamic> json) {
    return json == null
        ? <Preferences>[]
        : json.map((dynamic value) => Preferences.fromJson(value)).toList();
  }

  static Map<String, Preferences> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Preferences>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = Preferences.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (notification != null) 'notification': notification,
      if (offline != null) 'offline': offline,
      if (public != null) 'public': public,
      if (reference != null) 'reference': reference,
      if (reviewEnabled != null) 'reviewEnabled': reviewEnabled,
    };
  }

  @override
  String toString() {
    return 'Preferences[notification=$notification, offline=$offline, public=$public, reference=$reference, reviewEnabled=$reviewEnabled, ]';
  }
}
