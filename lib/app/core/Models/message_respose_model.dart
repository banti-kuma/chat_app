class MessageResponseModel {
  bool? success;
  String? message;
  String? copyrighths;

  MessageResponseModel({this.success, this.message, this.copyrighths});

  MessageResponseModel.fromJson(Map json) {
    success = json['success'];
    message = json['message'];
    copyrighths = json['copyrighths'];
  }

  Map toJson() {
    final Map data = new Map();
    data['success'] = this.success;
    data['message'] = this.message;
    data['copyrighths'] = this.copyrighths;
    return data;
  }
}
