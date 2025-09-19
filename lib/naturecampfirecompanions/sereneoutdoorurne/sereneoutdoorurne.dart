import 'package:go_router/go_router.dart';
import 'package:vanox/Route/jiam.dart';

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
                    context.pushNamed(
                        '${'3151364a29b492e564c24233e7c1e20783a113ca4fec230b22784b54a7a24e1f'.shieldDecode()}');

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
                    context.pushNamed(
                        '${'319f972e21171bffad70a0afc0074645fa8c5b6a6d347af2b364c4f479186cca'.shieldDecode()}');

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
                    context.pushNamed(
                        '${'4eb99bd3d199c07dec3a1b5152f0c901760dc17317c8f24ef1584fe32705d3fb'.shieldDecode()}');

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
                    context.pushNamed(
                        '${'41d91cf2964be947f2527b236edb942a8f1397d5595d7186ec717e2381db97e0'.shieldDecode()}');

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
