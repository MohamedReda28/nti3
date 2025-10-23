part of 'singup_cubit.dart';

@immutable
sealed class SingupState {}

final class SingupInitial extends SingupState {}

final class SingupLoadin extends SingupState {}

final class SingupSuccess extends SingupState {
  final UserEntity userEntity;

  SingupSuccess(this.userEntity);
}

final class SingupFaluir extends SingupState {
  final String errmassege;
  SingupFaluir(this.errmassege);
}
