part of keyclic_sdk_api.api;

class OperationStatePatch {
  OperationStatePatch({
    this.transition,
  });

  OperationStatePatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    transition = json['transition'];
  }

  String transition;
  //enum transitionEnum {  reset,  assign,  accept,  refuse,  progress,  resolve,  };

  Map<String, dynamic> toJson() {
    return {
      'transition': transition,
    };
  }

  @override
  String toString() {
    return 'OperationStatePatch[transition=$transition, ]';
  }

  static List<OperationStatePatch> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OperationStatePatch>()
        : json.map((value) => OperationStatePatch.fromJson(value)).toList();
  }

  static Map<String, OperationStatePatch> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationStatePatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationStatePatch.fromJson(value));
    }
    return map;
  }
}
