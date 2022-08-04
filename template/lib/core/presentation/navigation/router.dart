import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:template/core/app.dart';

abstract class AppRouter {
  static final BeamerParser routeInformationParser = BeamerParser();
  static final BeamerDelegate routerDelegate = BeamerDelegate(
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [
        MainLocation(),
      ],
    ),
  );
}

class MainLocation extends BeamLocation<BeamState> {
  static const String example1Route = '/main';
  static const String example2Route = '/main/2';

  @override
  List<Pattern> get pathPatterns => [example1Route, example2Route];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        const BeamPage(
          key: ValueKey(example1Route),
          child: ExampleHome1(),
        ),
        if (state.uri.pathSegments.contains('2'))
          const BeamPage(
            key: ValueKey(example2Route),
            child: ExampleHome2(),
          ),
      ];
}
