part of keyclic_sdk_api.api;

class DigitalDocumentFileContentTypeEnum {
  static const String textCsv_ = "text/csv";
  static const String applicationMsword_ = "application/msword";
  static const String
      applicationVndOpenxmlformatsOfficedocumentWordprocessingmlDocument_ =
      "application/vnd.openxmlformats-officedocument.wordprocessingml.document";
  static const String imageJpeg_ = "image/jpeg";
  static const String imageJpg_ = "image/jpg";
  static const String applicationPdf_ = "application/pdf";
  static const String imagePng_ = "image/png";
  static const String textPlain_ = "text/plain";
  static const String applicationVndMsExcel_ = "application/vnd.ms-excel";
  static const String
      applicationVndOpenxmlformatsOfficedocumentSpreadsheetmlSheet_ =
      "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
  static const String applicationZip_ = "application/zip";
}

class DigitalDocumentFile {
  DigitalDocumentFile({
    this.contentType,
    this.name,
  });

  factory DigitalDocumentFile.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DigitalDocumentFile(
      contentType: json['contentType'],
      name: json['name'],
    );
  }

  /// use DigitalDocumentFileContentTypeEnum
  String contentType;

  String name;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DigitalDocumentFile &&
        runtimeType == other.runtimeType &&
        contentType == other.contentType &&
        name == other.name;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= contentType?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;

    return hashCode;
  }

  static List<DigitalDocumentFile> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DigitalDocumentFile.fromJson(value))
            ?.toList() ??
        <DigitalDocumentFile>[];
  }

  static Map<String, DigitalDocumentFile> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DigitalDocumentFile>((String key, dynamic value) {
          return MapEntry(key, DigitalDocumentFile.fromJson(value));
        }) ??
        <String, DigitalDocumentFile>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (contentType != null) 'contentType': contentType,
      if (name != null) 'name': name,
    };
  }

  @override
  String toString() {
    return 'DigitalDocumentFile[contentType=$contentType, name=$name, ]';
  }
}
