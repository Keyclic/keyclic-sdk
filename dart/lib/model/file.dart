part of keyclic_sdk_api.api;

class FileContentTypeEnum {
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

class File {
  File({
    this.contentType,
    this.name,
  });

  factory File.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return File(
      contentType: json['contentType'],
      name: json['name'],
    );
  }

  /// use FileContentTypeEnum
  String contentType;

  String name;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is File &&
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

  static List<File> listFromJson(List<dynamic> json) {
    return json == null
        ? <File>[]
        : json.map((dynamic value) => File.fromJson(value)).toList();
  }

  static Map<String, File> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, File>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = File.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (contentType != null) 'contentType': contentType,
      if (name != null) 'name': name,
    };
  }

  @override
  String toString() {
    return 'File[contentType=$contentType, name=$name, ]';
  }
}
