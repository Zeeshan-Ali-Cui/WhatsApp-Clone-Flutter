class statusm{
  String? name;
  String? image;
  statusm(this.name,this.image);

  statusm.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image =json['image'];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    return data;
  }
}


