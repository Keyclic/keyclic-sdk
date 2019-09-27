part of keyclic_sdk_api.api;

class ContributionData {
  ContributionData({
    this.feedback,
  });

  ContributionData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    feedback = json['feedback'];
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
    return json == null
        ? <ContributionData>[]
        : json
            .map((dynamic value) => ContributionData.fromJson(value))
            .toList();
  }

  static Map<String, ContributionData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContributionData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ContributionData.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'feedback': feedback,
    };
  }

  @override
  String toString() {
    return 'ContributionData[feedback=$feedback, ]';
  }
}
