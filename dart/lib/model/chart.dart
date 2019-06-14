part of keyclic_sdk_api.api;

class Chart {
  Chart({
    this.labels,
    this.data,
  });

  Chart.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    labels = (json['labels'] as List)?.map((item) => item as String)?.toList();
    data = (json['data'] as List)?.map((item) => item as int)?.toList();
  }

  List<String> labels;

  List<int> data;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Chart &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(labels, other.labels) &&
        DeepCollectionEquality.unordered().equals(data, other.data);
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'labels': labels,
      'data': data,
    };
  }

  @override
  String toString() {
    return 'Chart[labels=$labels, data=$data, ]';
  }

  static List<Chart> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Chart>()
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
}
