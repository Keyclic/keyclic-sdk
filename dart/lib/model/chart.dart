part of keyclic_sdk_api.api;

class Chart {
  Chart({
    this.data,
    this.labels,
  });

  factory Chart.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Chart(
      data: json['data'] is List ? List<int>.from(json['data']) : null,
      labels: json['labels'] is List ? List<String>.from(json['labels']) : null,
    );
  }

  List<int> data;

  List<String> labels;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Chart &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(data, other.data) &&
        DeepCollectionEquality.unordered().equals(labels, other.labels);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (data is List && data.isNotEmpty) {
      hashCode ^= data
          .map((int element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (labels is List && labels.isNotEmpty) {
      hashCode ^= labels
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<Chart> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Chart.fromJson(value))?.toList() ??
        <Chart>[];
  }

  static Map<String, Chart> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Chart>((String key, dynamic value) {
          return MapEntry(key, Chart.fromJson(value));
        }) ??
        <String, Chart>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data,
      'labels': labels,
    };
  }

  @override
  String toString() {
    return 'Chart[data=$data, labels=$labels, ]';
  }
}
