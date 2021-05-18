part of keyclic_sdk_api.api;

class MarkerData {
  MarkerData({
    this.feedback,
    this.plan,
    this.point,
  });

  factory MarkerData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MarkerData(
      feedback: json['feedback'],
      plan: json['plan'],
      point: MarkerDataPoint.fromJson(json['point']),
    );
  }

  String feedback;

  String plan;

  MarkerDataPoint point;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerData &&
        runtimeType == other.runtimeType &&
        feedback == other.feedback &&
        plan == other.plan &&
        point == other.point;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= feedback?.hashCode ?? 0;
    hashCode ^= plan?.hashCode ?? 0;
    hashCode ^= point?.hashCode ?? 0;

    return hashCode;
  }

  static List<MarkerData> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => MarkerData.fromJson(value))?.toList() ??
        <MarkerData>[];
  }

  static Map<String, MarkerData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, MarkerData>((String key, dynamic value) {
          return MapEntry(key, MarkerData.fromJson(value));
        }) ??
        <String, MarkerData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'feedback': feedback,
      'plan': plan,
      'point': point?.toJson(),
    };
  }

  @override
  String toString() {
    return 'MarkerData[feedback=$feedback, plan=$plan, point=$point, ]';
  }
}
