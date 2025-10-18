class Faluir{
  final String errmassege;

  Faluir({required this.errmassege});


}


class FirebaseError extends Faluir{

  FirebaseError({required super.errmassege});

}
class ApiErrpr extends Faluir{
  ApiErrpr({required super.errmassege});

}

