/// status : true
/// message : "success"
/// data : [{"id":3,"name":"distributor"},{"id":6,"name":"mechanic"},{"id":4,"name":"retailer"},{"id":1,"name":"root"},{"id":2,"name":"sales"},{"id":5,"name":"workshop"}]

class GetRoleModel {
  GetRoleModel({
      bool? status, 
      String? message, 
      List<RoleData>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  GetRoleModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(RoleData.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<RoleData>? _data;
GetRoleModel copyWith({  bool? status,
  String? message,
  List<RoleData>? data,
}) => GetRoleModel(  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
);
  bool? get status => _status;
  String? get message => _message;
  List<RoleData>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 3
/// name : "distributor"

class RoleData {
  RoleData({
      num? id, 
      String? name,}){
    _id = id;
    _name = name;
}

  RoleData.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }
  num? _id;
  String? _name;
  RoleData copyWith({  num? id,
  String? name,
}) => RoleData(  id: id ?? _id,
  name: name ?? _name,
);
  num? get id => _id;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }

}