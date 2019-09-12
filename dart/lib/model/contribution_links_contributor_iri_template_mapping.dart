part of keyclic_sdk_api.api;

class ContributionLinksContributorIriTemplateMapping {
  ContributionLinksContributorIriTemplateMapping({
    this.person,
  });

  ContributionLinksContributorIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    person = json['person'];
  }

  String person;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContributionLinksContributorIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        person == other.person;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= (person?.hashCode ?? 0);

    return hashCode;
  }

  static List<ContributionLinksContributorIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <ContributionLinksContributorIriTemplateMapping>[]
        : json
            .map((dynamic value) =>
                ContributionLinksContributorIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, ContributionLinksContributorIriTemplateMapping>
      mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContributionLinksContributorIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] =
          ContributionLinksContributorIriTemplateMapping.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'person': person,
    };
  }

  @override
  String toString() {
    return 'ContributionLinksContributorIriTemplateMapping[person=$person, ]';
  }
}
