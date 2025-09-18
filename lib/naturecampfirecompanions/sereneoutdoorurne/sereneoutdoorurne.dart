import 'package:go_router/go_router.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SereneOutdoorurneWidget extends StatefulWidget {
  const SereneOutdoorurneWidget({super.key});

  @override
  State<SereneOutdoorurneWidget> createState() =>
      _SereneOutdoorurneWidgetState();
}

class _SereneOutdoorurneWidgetState extends State<SereneOutdoorurneWidget> {
  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 80.0,
      decoration: BoxDecoration(
      color: Colors.white,
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
                        FFAppState().starlightWhisperNetworking = 0;
                    context.pushNamed('outdoorJourneyCompanionsH');

                
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
                        FFAppState().starlightWhisperNetworking = 1;
                    context.pushNamed('rusticOutdoorFriendshipV');

                
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
                    FFAppState().starlightWhisperNetworking = 2;
                    context.pushNamed('twilightWhisperJourneyD');

                    
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
                         FFAppState().starlightWhisperNetworking = 3;
                    context.pushNamed('horizonWhisperNeourneM');

               
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
