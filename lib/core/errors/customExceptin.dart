class CustomException implements Exception{


  final String massage;

  CustomException({required this.massage});

 @override
  String toString() {

    return massage;
  }



}