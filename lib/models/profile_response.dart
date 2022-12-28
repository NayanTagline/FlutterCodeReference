class ProfileResponse {
  bool? success;
  int? statusCode;
  String? message;
  Data? data;
  String? error;

  ProfileResponse({this.success, this.statusCode, this.message, this.data});
  ProfileResponse.withError(String errorMessage) {
    error = errorMessage;
  }
  ProfileResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    statusCode = json['statusCode'];
    message = json['message'] ?? "";
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['statusCode'] = this.statusCode;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? username;
  List<UserAttributes>? userAttributes;
  ResponseMetadata? responseMetadata;

  Data({this.username, this.userAttributes, this.responseMetadata});

  Data.fromJson(Map<String, dynamic> json) {
    username = json['Username'];
    if (json['UserAttributes'] != null) {
      userAttributes = <UserAttributes>[];
      json['UserAttributes'].forEach((v) {
        userAttributes!.add(new UserAttributes.fromJson(v));
      });
    }
    responseMetadata = json['ResponseMetadata'] != null ? new ResponseMetadata.fromJson(json['ResponseMetadata']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Username'] = this.username;
    if (this.userAttributes != null) {
      data['UserAttributes'] = this.userAttributes!.map((v) => v.toJson()).toList();
    }
    if (this.responseMetadata != null) {
      data['ResponseMetadata'] = this.responseMetadata!.toJson();
    }
    return data;
  }
}

class UserAttributes {
  String? name;
  String? value;

  UserAttributes({this.name, this.value});

  UserAttributes.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    value = json['Value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['Value'] = this.value;
    return data;
  }
}

class ResponseMetadata {
  String? requestId;
  int? hTTPStatusCode;
  HTTPHeaders? hTTPHeaders;
  int? retryAttempts;

  ResponseMetadata({this.requestId, this.hTTPStatusCode, this.hTTPHeaders, this.retryAttempts});

  ResponseMetadata.fromJson(Map<String, dynamic> json) {
    requestId = json['RequestId'];
    hTTPStatusCode = json['HTTPStatusCode'];
    hTTPHeaders = json['HTTPHeaders'] != null ? new HTTPHeaders.fromJson(json['HTTPHeaders']) : null;
    retryAttempts = json['RetryAttempts'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['RequestId'] = this.requestId;
    data['HTTPStatusCode'] = this.hTTPStatusCode;
    if (this.hTTPHeaders != null) {
      data['HTTPHeaders'] = this.hTTPHeaders!.toJson();
    }
    data['RetryAttempts'] = this.retryAttempts;
    return data;
  }
}

class HTTPHeaders {
  String? date;
  String? contentType;
  String? contentLength;
  String? connection;
  String? xAmznRequestid;

  HTTPHeaders({this.date, this.contentType, this.contentLength, this.connection, this.xAmznRequestid});

  HTTPHeaders.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    contentType = json['content-type'];
    contentLength = json['content-length'];
    connection = json['connection'];
    xAmznRequestid = json['x-amzn-requestid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['content-type'] = this.contentType;
    data['content-length'] = this.contentLength;
    data['connection'] = this.connection;
    data['x-amzn-requestid'] = this.xAmznRequestid;
    return data;
  }
}
