part of keyclic_sdk_api.api;

class PublicationData {
  PublicationData({
    this.message,
    this.feed,
    this.title,
    this.organization,
  });

  factory PublicationData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PublicationData(
      message: json['message'],
      feed: json['feed'],
      title: json['title'],
      organization: json['organization'],
    );
  }

  String message;

  String feed;

  String title;

  String organization;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationData &&
        runtimeType == other.runtimeType &&
        message == other.message &&
        feed == other.feed &&
        title == other.title &&
        organization == other.organization;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= message?.hashCode ?? 0;
    hashCode ^= feed?.hashCode ?? 0;
    hashCode ^= title?.hashCode ?? 0;
    hashCode ^= organization?.hashCode ?? 0;

    return hashCode;
  }

  static List<PublicationData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PublicationData.fromJson(value))
            ?.toList() ??
        <PublicationData>[];
  }

  static Map<String, PublicationData> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, PublicationData.fromJson(value));
        }) ??
        <String, PublicationData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (message != null) 'message': message,
      if (feed != null) 'feed': feed,
      if (title != null) 'title': title,
      if (organization != null) 'organization': organization,
    };
  }

  @override
  String toString() {
    return 'PublicationData[message=$message, feed=$feed, title=$title, organization=$organization, ]';
  }
}
