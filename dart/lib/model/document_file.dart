// @dart=2.10
part of keyclic_sdk_api.api;

class DocumentFileContentTypeEnum {
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

class DocumentFile {
  DocumentFile({
    this.contentType,
    this.name,
  });

  factory DocumentFile.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentFile(
      contentType: json['contentType'],
      name: json['name'],
    );
  }

  /// use DocumentFileContentTypeEnum
  String contentType;

  String name;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentFile &&
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

  static List<DocumentFile> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DocumentFile.fromJson(value))
            ?.toList() ??
        <DocumentFile>[];
  }

  static Map<String, DocumentFile> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, DocumentFile>((String key, dynamic value) {
          return MapEntry(key, DocumentFile.fromJson(value));
        }) ??
        <String, DocumentFile>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (contentType != null) 'contentType': contentType,
      if (name != null) 'name': name,
    };
  }

  @override
  String toString() {
    return 'DocumentFile[contentType=$contentType, name=$name, ]';
  }
}
