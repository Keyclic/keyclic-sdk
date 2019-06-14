part of keyclic_sdk_api.api;

class PublicationData {
  PublicationData({
    this.message,
    this.place,
    this.title,
  });

  PublicationData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    message = json['message'];
    place = json['place'];
    title = json['title'];
  }

  String message;

  String place;

  String title;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationData &&
        runtimeType == other.runtimeType &&
        message == other.message &&
        place == other.place &&
        title == other.title;
  }

  @override
  int get hashCode => 0 ^ message.hashCode ^ place.hashCode ^ title.hashCode;

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'place': place,
      'title': title,
    };
  }

  @override
  String toString() {
    return 'PublicationData[message=$message, place=$place, title=$title, ]';
  }

  static List<PublicationData> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PublicationData>()
        : json.map((value) => PublicationData.fromJson(value)).toList();
  }

  static Map<String, PublicationData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PublicationData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PublicationData.fromJson(value));
    }
    return map;
  }
}
