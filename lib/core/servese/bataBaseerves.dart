abstract class DataBAseSevese{

 Future<void> addData({required String path,required Map <String,dynamic> data,String? dID});
 Future<dynamic> getData({required String path, String? docId});

}