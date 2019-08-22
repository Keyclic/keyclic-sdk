part of keyclic_sdk_api.api;

class Chart {
  Chart({
    this.data,
    this.labels,
  });

  Chart.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    data = (json['data'] as List)?.map((item) => item as int)?.toList();
    labels = (json['labels'] as List)?.map((item) => item as String)?.toList();
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
  int get hashCode =>
      0 ^
      data.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode) ^
      labels.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode);

  static List<Chart> listFromJson(List<dynamic> json) {
    return json == null
        ? <Chart>[]
        : json.map((value) => Chart.fromJson(value)).toList();
  }

  static Map<String, Chart> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Chart>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Chart.fromJson(value));
    }
    return map;
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
