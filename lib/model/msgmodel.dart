
class msgm{
  String? messageContent;
  String? messageType;
  msgm(this.messageContent,this.messageType);

  msgm.fromJson(Map<String, dynamic> json) {
    messageContent = json['messageContent'];
    messageType =json['messageType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['messageContent'] = this.messageContent;
    data['messageType'] = this.messageType;
    return data;
  }
}


