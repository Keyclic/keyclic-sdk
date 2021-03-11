part of keyclic_sdk_api.api;

class File_ContentTypeEnum {
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

class File_ {
  File_({
    this.content,
    this.contentType,
    this.name,
  });

  factory File_.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return File_(
      content: json['content'],
      contentType: json['contentType'],
      name: json['name'],
    );
  }

  String content;

  /// use File_ContentTypeEnum
  String contentType;

  String name;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is File_ &&
        runtimeType == other.runtimeType &&
        content == other.content &&
        contentType == other.contentType &&
        name == other.name;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= content?.hashCode ?? 0;
    hashCode ^= contentType?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;

    return hashCode;
  }

  static List<File_> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => File_.fromJson(value))?.toList() ??
        <File_>[];
  }

  static Map<String, File_> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, File_>((String key, dynamic value) {
          return MapEntry(key, File_.fromJson(value));
        }) ??
        <String, File_>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (content != null) 'content': content,
      if (contentType != null) 'contentType': contentType,
      if (name != null) 'name': name,
    };
  }

  @override
  String toString() {
    return 'File_[content=$content, contentType=$contentType, name=$name, ]';
  }
}
