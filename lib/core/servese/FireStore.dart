import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nti3/core/servese/bataBaseerves.dart';

class Firestore extends DataBAseSevese {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData(
      {required String path,
      required Map<String, dynamic> data,
      String? dID}) async {
    if (dID != null) {
      await firestore.collection(path).doc(dID).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  Future<dynamic> getData({required String path, String? docId}) async {
    var data;
    if (docId != null) {
      data = await firestore.collection(path).doc(docId).get();
    } else {
      data = await firestore.collection(path).get();
    }
    return data.data();
  }
}
