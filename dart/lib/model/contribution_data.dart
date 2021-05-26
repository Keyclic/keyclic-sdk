part of keyclic_sdk_api.api;

class ContributionData {
  ContributionData({
    this.feedback,
  });

  factory ContributionData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ContributionData(
      feedback: json['feedback'],
    );
  }

  String feedback;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContributionData &&
        runtimeType == other.runtimeType &&
        feedback == other.feedback;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= feedback?.hashCode ?? 0;

    return hashCode;
  }

  static List<ContributionData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ContributionData.fromJson(value))
            ?.toList() ??
        <ContributionData>[];
  }

  static Map<String, ContributionData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ContributionData>((String key, dynamic value) {
          return MapEntry(key, ContributionData.fromJson(value));
        }) ??
        <String, ContributionData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (feedback != null) 'feedback': feedback,
    };
  }

  @override
  String toString() {
    return 'ContributionData[feedback=$feedback, ]';
  }
}
