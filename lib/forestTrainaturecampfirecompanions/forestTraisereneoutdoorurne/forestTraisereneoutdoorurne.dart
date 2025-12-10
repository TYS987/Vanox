import 'dart:io';

import 'package:go_router/go_router.dart';
import 'package:vanox/forestTraistarlightBondingAdvisor/forestTraipineConeBondingCircle.dart';
import 'package:vanox/forestTraiwildernessTrailInspiration.dart';
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
    context.watch<inclusiveExperienceCoordinator>();

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
              if (inclusiveExperienceCoordinator().starlightWhisperNetworking ==
                  0) {
                return FutureBuilder(
                    future: forestTraiwildEchoVoiceCluster
                        .forestTraicampBondVoiceJourney(
                            'emberConnectionJourneys.png'),
                    builder: (context, asyncSnapshot) {
                      if (!asyncSnapshot.hasData) return const SizedBox();
                      return Container(
                        width: 24.0,
                        height: 24.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: FileImage(File(asyncSnapshot.data!)),
                          ),
                        ),
                      );
                    });
              } else {
                return InkWell(
                  onTap: () async {
                    inclusiveExperienceCoordinator()
                        .starlightWhisperNetworking = 0;
                    context.pushNamed(
                        '${'3151364a29b492e564c24233e7c1e20783a113ca4fec230b22784b54a7a24e1f'.forestTraishieldDecode()}');

                    setState(() {});
                  },
                  child: FutureBuilder(
                      future: forestTraiwildEchoVoiceCluster
                          .forestTraicampBondVoiceJourney(
                              'emberConnectionJourney.png'),
                      builder: (context, asyncSnapshot) {
                        if (!asyncSnapshot.hasData) return const SizedBox();
                        return Container(
                          width: 24.0,
                          height: 24.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: FileImage(File(asyncSnapshot.data!)),
                            ),
                          ),
                        );
                      }),
                );
              }
            },
          ),
          Builder(
            builder: (context) {
              if (inclusiveExperienceCoordinator().starlightWhisperNetworking ==
                  1) {
                return FutureBuilder(
                    future: forestTraiwildEchoVoiceCluster
                        .forestTraicampBondVoiceJourney(
                            'outdoorHarmonyHubs.png'),
                    builder: (context, asyncSnapshot) {
                      if (!asyncSnapshot.hasData) return const SizedBox();
                      return Container(
                        width: 24.0,
                        height: 24.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: FileImage(File(asyncSnapshot.data!)),
                          ),
                        ),
                      );
                    });
              } else {
                return InkWell(
                  onTap: () async {
                    inclusiveExperienceCoordinator()
                        .starlightWhisperNetworking = 1;
                    context.pushNamed(
                        '${'319f972e21171bffad70a0afc0074645fa8c5b6a6d347af2b364c4f479186cca'.forestTraishieldDecode()}');

                    setState(() {});
                  },
                  child: FutureBuilder(
                      future: forestTraiwildEchoVoiceCluster
                          .forestTraicampBondVoiceJourney(
                              'outdoorHarmonyHub.png'),
                      builder: (context, asyncSnapshot) {
                        if (!asyncSnapshot.hasData) return const SizedBox();
                        return Container(
                          width: 24.0,
                          height: 24.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: FileImage(File(asyncSnapshot.data!)),
                            ),
                          ),
                        );
                      }),
                );
              }
            },
          ),
          Builder(
            builder: (context) {
              if (inclusiveExperienceCoordinator().starlightWhisperNetworking ==
                  2) {
                return FutureBuilder(
                    future: forestTraiwildEchoVoiceCluster
                        .forestTraicampBondVoiceJourney(
                            'horizonWhisperStories.png'),
                    builder: (context, asyncSnapshot) {
                      if (!asyncSnapshot.hasData) return const SizedBox();
                      return Container(
                        width: 24.0,
                        height: 24.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: FileImage(File(asyncSnapshot.data!)),
                          ),
                        ),
                      );
                    });
              } else {
                return InkWell(
                  onTap: () async {
                    if (inclusiveExperienceCoordinator()
                            .virtualCampfireConnections ==
                        '${'65cb059120f61937c05ec9d619025628'.forestTraishieldDecode()}') {
                      inclusiveExperienceCoordinator()
                          .evergreenFriendshipLounge = false;
                      inclusiveExperienceCoordinator()
                          .starlightWhisperNetworking = 0;
                      inclusiveExperienceCoordinator().update(() {});
                      context.go(
                          '${'047b7b2a3d5935fd1e559aba7659991bc8666bdd94937b1e683dae7d42710b0b'.forestTraishieldDecode()}');
                    } else {
                      inclusiveExperienceCoordinator()
                          .starlightWhisperNetworking = 2;
                      context.pushNamed(
                          '${'4eb99bd3d199c07dec3a1b5152f0c901760dc17317c8f24ef1584fe32705d3fb'.forestTraishieldDecode()}');

                      setState(() {});
                    }
                  },
                  child: FutureBuilder(
                      future: forestTraiwildEchoVoiceCluster
                          .forestTraicampBondVoiceJourney(
                              'horizonWhisperStorie.png'),
                      builder: (context, asyncSnapshot) {
                        if (!asyncSnapshot.hasData) return const SizedBox();
                        return Container(
                          width: 24.0,
                          height: 24.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: FileImage(File(asyncSnapshot.data!)),
                            ),
                          ),
                        );
                      }),
                );
              }
            },
          ),
          Builder(
            builder: (context) {
              if (inclusiveExperienceCoordinator().starlightWhisperNetworking ==
                  3) {
                return FutureBuilder(
                    future: forestTraiwildEchoVoiceCluster
                        .forestTraicampBondVoiceJourney(
                            'campfireCommunityRituals.png'),
                    builder: (context, asyncSnapshot) {
                      if (!asyncSnapshot.hasData) return const SizedBox();
                      return Container(
                        width: 24.0,
                        height: 24.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: FileImage(File(asyncSnapshot.data!)),
                          ),
                        ),
                      );
                    });
              } else {
                return InkWell(
                  onTap: () async {
                    inclusiveExperienceCoordinator()
                        .starlightWhisperNetworking = 3;
                    context.pushNamed(
                        '${'41d91cf2964be947f2527b236edb942a8f1397d5595d7186ec717e2381db97e0'.forestTraishieldDecode()}');

                    setState(() {});
                  },
                  child: FutureBuilder(
                      future: forestTraiwildEchoVoiceCluster
                          .forestTraicampBondVoiceJourney(
                              'campfireCommunityRitual.png'),
                      builder: (context, asyncSnapshot) {
                        if (!asyncSnapshot.hasData) return const SizedBox();
                        return Container(
                          width: 24.0,
                          height: 24.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: FileImage(File(asyncSnapshot.data!)),
                            ),
                          ),
                        );
                      }),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
