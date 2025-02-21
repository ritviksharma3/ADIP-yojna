import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String udid;
  final String name;
  final String mobile;
  final String email;
  final String state;
  final bool availedScheme;

  const User({
    required this.udid,
    required this.name,
    required this.mobile,
    required this.email,
    required this.state,
    this.availedScheme = false,
  });

  Map<String, dynamic> toJson() => {
        "udid": udid,
        "name": name,
        "mobile": mobile,
        "email": email,
        "state": state,
        "availedScheme": availedScheme,
      };

  //take a docmnt snap and convert it into user model

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return User(
      udid: snapshot['udid'],
      name: snapshot['name'],
      mobile: snapshot['mobile'],
      email: snapshot['email'],
      state: snapshot['state'],
      availedScheme: snapshot['availedScheme'],
    );
  }
}
