import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'shared/theme/app_theme.dart';
import 'bloc/blocs.dart';
import 'l10n/l10n.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
      bloc: Modular.get<LanguageBloc>(),
      builder: (BuildContext context, stateLanguage) {
        return BlocBuilder<ThemeBloc, ThemeState>(
          bloc: Modular.get<ThemeBloc>(),
          builder: (context, stateTheme) {
            return AnnotatedRegion<SystemUiOverlayStyle>(
              value: stateTheme.themeMode == ThemeMode.dark
                  ? SystemUiOverlayStyle.light
                  : SystemUiOverlayStyle.dark,
              child: MaterialApp.router(
                debugShowCheckedModeBanner: false,
                title: "MedDefend app",
                supportedLocales: L10n.all,
                theme: lightTheme,
                darkTheme: darkTheme,
                themeMode: stateTheme.themeMode,
                locale: stateLanguage.locale,
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                ],
                routeInformationParser: Modular.routeInformationParser,
                routerDelegate: Modular.routerDelegate,
              ),
            );
          },
        );
      },
    );
  }
}
