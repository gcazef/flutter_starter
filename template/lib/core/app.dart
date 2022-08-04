import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:template/core/presentation/app_themes.dart';
import 'package:template/core/presentation/navigation/router.dart';
import 'package:template/core/presentation/providers/hello_world.provider.dart';
import 'package:template/core/utils/build_context.extension.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        title: 'Meal Planner',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routeInformationParser: AppRouter.routeInformationParser,
        routerDelegate: AppRouter.routerDelegate,
        theme: AppThemes.light,
      );
}

class ExampleHome1 extends HookConsumerWidget {
  const ExampleHome1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String providerMessage = ref.watch(helloWorldProvider);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text('${context.localization.helloWorld} 1'),
            Text(providerMessage),
            ElevatedButton(
              onPressed: () => context.beamToNamed(MainLocation.example2Route),
              child: const Text('Example 2 Route'),
            ),
          ],
        ),
      ),
    );
  }
}

class ExampleHome2 extends StatelessWidget {
  const ExampleHome2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Text('${context.localization.helloWorld} 2'),
              ElevatedButton(
                onPressed: () => context.beamBack(),
                child: const Text('Example 1 Route'),
              ),
            ],
          ),
        ),
      );
}
