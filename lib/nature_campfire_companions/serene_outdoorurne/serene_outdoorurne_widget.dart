import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'serene_outdoorurne_model.dart';
export 'serene_outdoorurne_model.dart';

class SereneOutdoorurneWidget extends StatefulWidget {
  const SereneOutdoorurneWidget({super.key});

  @override
  State<SereneOutdoorurneWidget> createState() =>
      _SereneOutdoorurneWidgetState();
}

class _SereneOutdoorurneWidgetState extends State<SereneOutdoorurneWidget> {
  late SereneOutdoorurneModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SereneOutdoorurneModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 80.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Builder(
            builder: (context) {
              if (FFAppState().starlightWhisperNetworking == 0) {
                return Container(
                  width: 24.0,
                  height: 24.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/emberConnectionJourneys.png',
                      ).image,
                    ),
                  ),
                );
              } else {
                return InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context
                        .pushNamed(OutdoorJourneyCompanionsHWidget.routeName);

                    FFAppState().starlightWhisperNetworking = 0;
                    safeSetState(() {});
                  },
                  child: Container(
                    width: 24.0,
                    height: 24.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/emberConnectionJourney.png',
                        ).image,
                      ),
                    ),
                  ),
                );
              }
            },
          ),
          Builder(
            builder: (context) {
              if (FFAppState().starlightWhisperNetworking == 1) {
                return Container(
                  width: 24.0,
                  height: 24.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/outdoorHarmonyHubs.png',
                      ).image,
                    ),
                  ),
                );
              } else {
                return InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(RusticOutdoorFriendshipVWidget.routeName);

                    FFAppState().starlightWhisperNetworking = 1;
                    safeSetState(() {});
                  },
                  child: Container(
                    width: 24.0,
                    height: 24.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/outdoorHarmonyHub.png',
                        ).image,
                      ),
                    ),
                  ),
                );
              }
            },
          ),
          Builder(
            builder: (context) {
              if (FFAppState().starlightWhisperNetworking == 2) {
                return Container(
                  width: 24.0,
                  height: 24.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/horizonWhisperStories.png',
                      ).image,
                    ),
                  ),
                );
              } else {
                return InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(TwilightWhisperJourneyDWidget.routeName);

                    FFAppState().starlightWhisperNetworking = 3;
                    safeSetState(() {});
                  },
                  child: Container(
                    width: 24.0,
                    height: 24.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/horizonWhisperStorie.png',
                        ).image,
                      ),
                    ),
                  ),
                );
              }
            },
          ),
          Builder(
            builder: (context) {
              if (FFAppState().starlightWhisperNetworking == 3) {
                return Container(
                  width: 24.0,
                  height: 24.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/campfireCommunityRituals.png',
                      ).image,
                    ),
                  ),
                );
              } else {
                return InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(HorizonWhisperNeourneMWidget.routeName);

                    FFAppState().starlightWhisperNetworking = 3;
                    safeSetState(() {});
                  },
                  child: Container(
                    width: 24.0,
                    height: 24.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/campfireCommunityRitual.png',
                        ).image,
                      ),
                    ),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
