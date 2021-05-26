part of keyclic_sdk_api.api;

class CommentDataTypeEnum {
  static const String comment_ = "Comment";
  static const String reminder_ = "Reminder";
}

class CommentData {
  CommentData({
    this.text,
    this.type,
  });

  factory CommentData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CommentData(
      text: json['text'],
      type: json['type'],
    );
  }

  String text;

  /// use CommentDataTypeEnum
  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CommentData &&
        runtimeType == other.runtimeType &&
        text == other.text &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= text?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<CommentData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => CommentData.fromJson(value))
            ?.toList() ??
        <CommentData>[];
  }

  static Map<String, CommentData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, CommentData>((String key, dynamic value) {
          return MapEntry(key, CommentData.fromJson(value));
        }) ??
        <String, CommentData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (text != null) 'text': text,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'CommentData[text=$text, type=$type, ]';
  }
}
