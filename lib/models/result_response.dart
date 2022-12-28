class ResultResponse {
  int? statusCode;
  bool? error;
  String? message;
  Data? data;
  String? errorMsg;

  ResultResponse({this.statusCode, this.error, this.message, this.data});

  ResultResponse.withError(String errorMessage) {
    errorMsg = errorMessage;
  }
  ResultResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'];
    error = json['error'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status_code'] = this.statusCode;
    data['error'] = this.error;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? gaScore;
  String? maScore;
  String? reScore;
  String? saScore;
  String? markerPrimary;
  String? userID;
  Null? location;
  String? submissionID;
  String? timeEnd;
  String? timeStart;
  String? marker;
  String? markerInfo;
  String? petPeeves;
  String? strengthsInBusiness;
  String? weaknessInBusiness;

  Data(
      {this.gaScore,
      this.maScore,
      this.reScore,
      this.saScore,
      this.markerPrimary,
      this.userID,
      this.location,
      this.submissionID,
      this.timeEnd,
      this.timeStart,
      this.marker,
      this.markerInfo,
      this.petPeeves,
      this.strengthsInBusiness,
      this.weaknessInBusiness});

  Data.fromJson(Map<String, dynamic> json) {
    gaScore = json['GaScore'];
    maScore = json['MaScore'];
    reScore = json['ReScore'];
    saScore = json['SaScore'];
    markerPrimary = json['MarkerPrimary'];
    userID = json['UserID'];
    location = json['Location'];
    submissionID = json['SubmissionID'];
    timeEnd = json['TimeEnd'];
    timeStart = json['TimeStart'];
    marker = json['Marker'];
    markerInfo = json['MarkerInfo'];
    petPeeves = json['PetPeeves'];
    strengthsInBusiness = json['StrengthsInBusiness'];
    weaknessInBusiness = json['WeaknessInBusiness'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['GaScore'] = this.gaScore;
    data['MaScore'] = this.maScore;
    data['ReScore'] = this.reScore;
    data['SaScore'] = this.saScore;
    data['MarkerPrimary'] = this.markerPrimary;
    data['UserID'] = this.userID;
    data['Location'] = this.location;
    data['SubmissionID'] = this.submissionID;
    data['TimeEnd'] = this.timeEnd;
    data['TimeStart'] = this.timeStart;
    data['Marker'] = this.marker;
    data['MarkerInfo'] = this.markerInfo;
    data['PetPeeves'] = this.petPeeves;
    data['StrengthsInBusiness'] = this.strengthsInBusiness;
    data['WeaknessInBusiness'] = this.weaknessInBusiness;
    return data;
  }
}
