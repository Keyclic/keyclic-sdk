part of keyclic_sdk_api.api;

class CommentData {
  CommentData({
    this.text,
  });

  factory CommentData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CommentData(
      text: json['text'],
    );
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
    return json
            ?.map((dynamic value) => CommentData.fromJson(value))
            ?.toList() ??
        <CommentData>[];
  }

  static Map<String, CommentData> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, CommentData.fromJson(value));
        }) ??
        <String, CommentData>{};
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
