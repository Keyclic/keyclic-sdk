part of keyclic_sdk_api.api;

class ApplicationAbout {
  ApplicationAbout({
    this.name,
    this.text,
  });

  ApplicationAbout.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    name = json['name'];
    text = json['text'];
  }

  String name;

  String text;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationAbout &&
        runtimeType == other.runtimeType &&
        name == other.name &&
        text == other.text;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= text?.hashCode ?? 0;

    return hashCode;
  }

  static List<ApplicationAbout> listFromJson(List<dynamic> json) {
    return json == null
        ? <ApplicationAbout>[]
        : json
            .map((dynamic value) => ApplicationAbout.fromJson(value))
            .toList();
  }

  static Map<String, ApplicationAbout> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ApplicationAbout>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ApplicationAbout.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (name != null) 'name': name,
      if (text != null) 'text': text,
    };
  }

  @override
  String toString() {
    return 'ApplicationAbout[name=$name, text=$text, ]';
  }
}
