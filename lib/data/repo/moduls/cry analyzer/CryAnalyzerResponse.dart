class CryAnalyzerResponse {
  CryAnalyzerResponse({
      this.predictedClasses,});

  CryAnalyzerResponse.fromJson(dynamic json) {
    predictedClasses = json['predicted_classes'];
  }
  String? predictedClasses;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['predicted_classes'] = predictedClasses;
    return map;
  }

}