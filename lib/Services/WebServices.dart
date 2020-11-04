import 'package:firebase_database/firebase_database.dart';

class WebServices{
  static final DatabaseReference NameRef=FirebaseDatabase.instance.reference().child('name');
  static final DatabaseReference AgeRef=FirebaseDatabase.instance.reference().child('ages');
  static final DatabaseReference PicsRef=FirebaseDatabase.instance.reference().child('pics');
}