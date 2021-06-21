// @dart=2.10
part of keyclic_sdk_api.api;

class ApplicationConfiguration {
  ApplicationConfiguration({
    this.public,
  });

  factory ApplicationConfiguration.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ApplicationConfiguration(
      public: json['public'],
    );
  }

  bool public;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationConfiguration &&
        runtimeType == other.runtimeType &&
        public == other.public;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= public?.hashCode ?? 0;

    return hashCode;
  }

  static List<ApplicationConfiguration> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ApplicationConfiguration.fromJson(value))
            ?.toList() ??
        <ApplicationConfiguration>[];
  }

  static Map<String, ApplicationConfiguration> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ApplicationConfiguration>(
            (String key, dynamic value) {
          return MapEntry(key, ApplicationConfiguration.fromJson(value));
        }) ??
        <String, ApplicationConfiguration>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (public != null) 'public': public,
    };
  }

  @override
  String toString() {
    return 'ApplicationConfiguration[public=$public, ]';
  }
}
