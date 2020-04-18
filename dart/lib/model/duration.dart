part of keyclic_sdk_api.api;

class Duration {
  Duration({
    this.hours,
    this.minutes,
    this.seconds,
  });

  factory Duration.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Duration(
      hours: json['hours']?.toDouble(),
      minutes: json['minutes']?.toDouble(),
      seconds: json['seconds'],
    );
  }

  double hours;

  double minutes;

  int seconds;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Duration &&
        runtimeType == other.runtimeType &&
        hours == other.hours &&
        minutes == other.minutes &&
        seconds == other.seconds;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= hours?.hashCode ?? 0;
    hashCode ^= minutes?.hashCode ?? 0;
    hashCode ^= seconds?.hashCode ?? 0;

    return hashCode;
  }

  static List<Duration> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Duration.fromJson(value))?.toList() ??
        <Duration>[];
  }

  static Map<String, Duration> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Duration>((String key, dynamic value) {
          return MapEntry(key, Duration.fromJson(value));
        }) ??
        <String, Duration>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (hours != null) 'hours': hours,
      if (minutes != null) 'minutes': minutes,
      if (seconds != null) 'seconds': seconds,
    };
  }

  @override
  String toString() {
    return 'Duration[hours=$hours, minutes=$minutes, seconds=$seconds, ]';
  }
}
