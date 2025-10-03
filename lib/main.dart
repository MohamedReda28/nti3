import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nti3/features/auth/presentaion/veiw/Singin_Veiw.dart';
import 'package:nti3/generated/l10n.dart';

void main() {
  runApp(Nti3());
}

class Nti3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
             locale: const Locale('ar'),
      home: SinginVeiw()
    );
  }
}
