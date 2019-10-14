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
    if (json['data'] is List) {
      data = List<int>.from(json['data']);
    }
    if (json['labels'] is List) {
      labels = List<String>.from(json['labels']);
    }
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
    return json == null
        ? <Chart>[]
        : json.map((dynamic value) => Chart.fromJson(value)).toList();
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
      if (data != null) 'data': data,
      if (labels != null) 'labels': labels,
    };
  }

  @override
  String toString() {
    return 'Chart[data=$data, labels=$labels, ]';
  }
}
