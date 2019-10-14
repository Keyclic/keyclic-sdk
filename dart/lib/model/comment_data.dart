part of keyclic_sdk_api.api;

class CommentData {
  CommentData({
    this.text,
  });

  CommentData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    text = json['text'];
  }

  String text;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CommentData &&
        runtimeType == other.runtimeType &&
        text == other.text;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= text?.hashCode ?? 0;

    return hashCode;
  }

  static List<CommentData> listFromJson(List<dynamic> json) {
    return json == null
        ? <CommentData>[]
        : json.map((dynamic value) => CommentData.fromJson(value)).toList();
  }

  static Map<String, CommentData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CommentData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = CommentData.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (text != null) 'text': text,
    };
  }

  @override
  String toString() {
    return 'CommentData[text=$text, ]';
  }
}
