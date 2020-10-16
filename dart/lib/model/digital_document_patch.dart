part of keyclic_sdk_api.api;

class DigitalDocumentPatch {
  DigitalDocumentPatch({
    this.text,
  });

  factory DigitalDocumentPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DigitalDocumentPatch(
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

    return other is DigitalDocumentPatch &&
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

  static List<DigitalDocumentPatch> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DigitalDocumentPatch.fromJson(value))
            ?.toList() ??
        <DigitalDocumentPatch>[];
  }

  static Map<String, DigitalDocumentPatch> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DigitalDocumentPatch>((String key, dynamic value) {
          return MapEntry(key, DigitalDocumentPatch.fromJson(value));
        }) ??
        <String, DigitalDocumentPatch>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (text != null) 'text': text,
    };
  }

  @override
  String toString() {
    return 'DigitalDocumentPatch[text=$text, ]';
  }
}
