part of keyclic_sdk_api.api;

class ExportDataContentTypeEnum {
  static const String pdf_ = "application/pdf";
  static const String vndOpenxmlformatsOfficedocumentSpreadsheetmlSheet_ =
      "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
}

class ExportData {
  ExportData({
    this.contentType,
  });

  factory ExportData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExportData(
      contentType: json['contentType'],
    );
  }

  /// use ExportDataContentTypeEnum
  String contentType;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExportData &&
        runtimeType == other.runtimeType &&
        contentType == other.contentType;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= contentType?.hashCode ?? 0;

    return hashCode;
  }

  static List<ExportData> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => ExportData.fromJson(value))?.toList() ??
        <ExportData>[];
  }

  static Map<String, ExportData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ExportData>((String key, dynamic value) {
          return MapEntry(key, ExportData.fromJson(value));
        }) ??
        <String, ExportData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (contentType != null) 'contentType': contentType,
    };
  }

  @override
  String toString() {
    return 'ExportData[contentType=$contentType, ]';
  }
}
