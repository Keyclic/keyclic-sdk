part of keyclic_sdk_api.api;

class CommentData {
  CommentData();

  CommentData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    text = json['text'];
  }

  String text;

  Map<String, dynamic> toJson() {
    return {
      'text': text,
    };
  }

  @override
  String toString() {
    return 'CommentData[text=$text, ]';
  }

  static List<CommentData> listFromJson(List<dynamic> json) {
    return json == null
        ? List<CommentData>()
        : json.map((value) => CommentData.fromJson(value)).toList();
  }

  static Map<String, CommentData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CommentData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = CommentData.fromJson(value));
    }
    return map;
  }
}
