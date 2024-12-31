import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // get collection of water usage
  final CollectionReference water =
      FirebaseFirestore.instance.collection('water usage');
}
