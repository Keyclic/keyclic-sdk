part of keyclic_sdk_api.api;

class About {
  About({
    this.name,
    this.text,
  });

  factory About.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return About(
      name: json['name'],
      text: json['text'],
    );
  }

  String name;

  String text;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is About &&
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

  static List<About> listFromJson(List<dynamic> json) {
    return json == null
        ? <About>[]
        : json.map((dynamic value) => About.fromJson(value)).toList();
  }

  static Map<String, About> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, About>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = About.fromJson(value));
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
    return 'About[name=$name, text=$text, ]';
  }
}
