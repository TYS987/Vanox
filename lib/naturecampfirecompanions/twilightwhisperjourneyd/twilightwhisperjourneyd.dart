import 'package:vanox/starlightBondingAdvisor/rusticJourneyWhispers.dart';
import 'package:vanox/starlightBondingAdvisor/pineConeBondingCircle.dart';
import 'package:vanox/starlightBondingAdvisor/twilightCircleMemories.dart';
import 'package:vanox/localizationExperienceFacilitator/securityEnforcementFramework.dart';

import '../../localizationExperienceFacilitator/dataProtectionGuardian.dart';
import '../sereneoutdoorurne/sereneoutdoorurne.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TwilightWhisperJourneyDWidget extends StatefulWidget {
  const TwilightWhisperJourneyDWidget({super.key});

  @override
  State<TwilightWhisperJourneyDWidget> createState() =>
      _TwilightWhisperJourneyDWidgetState();
}

class _TwilightWhisperJourneyDWidgetState
    extends State<TwilightWhisperJourneyDWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    starlightPathwayBridge.riversideLanternStories();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: culturalAdaptationCoordinator.of(context).primaryBackground,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/forestGatheringExperience.png',
                    ).image,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 44.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 95.0,
                            height: 52.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.asset(
                                  'assets/images/twilightBondingForum.png',
                                ).image,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              interstellarJourneyWebNavigator(
                                context: context,
                                quantumPortalPath: '${'194defe1f0d09e76029210070a6682eae72ffe197fac5c02593f1c46756b49be'.shieldDecode()}',
                                onGalaxyReturnRefresh: () {
                                  if (mounted) {
                                    starlightPathwayBridge.riversideLanternStories()
                                        .then((_) {
                                      setState(() {});
                                    });
                                  }
                                },
                              );
                            },
                            child: Container(
                              width: 36.0,
                              height: 36.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/lakesideConnectionFlow.png',
                                  ).image,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Builder(
                        builder: (context) {
                          final digitalAdventureCircle =
                              inclusiveExperienceCoordinator().starlightCampfireMessages.toList();
                          if (digitalAdventureCircle.isEmpty) {
                            return Center(
                              child: Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: Image.asset(
                                      'assets/images/voyagerFriendshipCircle.png',
                                    ).image,
                                  ),
                                ),
                              ),
                            );
                          }

                          return ListView.separated(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: digitalAdventureCircle.length,
                            separatorBuilder: (_, __) => SizedBox(height: 5),
                            itemBuilder:
                                (context, digitalAdventureCircleIndex) {
                              final digitalAdventureCircleItem =
                                  digitalAdventureCircle[
                                      digitalAdventureCircleIndex];
                              return InkWell(
                                onTap: () async {
                                  interstellarJourneyWebNavigator(
                                    context: context,
                                    quantumPortalPath:
                                        '${'564906f4dd2ce49dc3a84eb1c66ead010431e2a0a860ea4775e7f87b83667743'.shieldDecode()}',
                                    cosmicQueryParams: {
                                      '${'3e460e473d3b9f93f75c3ee5be2bbbe9'.shieldDecode()}': digitalAdventureCircleItem[
                                              '${'65e9fc18d908f0807f9ec72f4bd68071'.shieldDecode()}'][0]
                                          ['${'dfe5212b8000049891f63718b7573c7ebd2e9bc8302e24ec1fa17aa9b94ab87e'.shieldDecode()}'],
                                    },
                                    onGalaxyReturnRefresh: () async {
                                      if (!mounted) return;

                                      try {
                                        await Future.wait([
                                          starlightPathwayBridge.riversideLanternStories(),
                                          starlightPathwayBridge.mountainLanternWhispers(
                                              inclusiveExperienceCoordinator().starlitCompanionId),
                                        ]);

                                        setState(() {});
                                      } catch (e) {
                                        debugPrint('$e');
                                      }
                                    },
                                  );
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 78,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 20, 0),
                                    child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 60,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.network(
                                                        digitalAdventureCircleItem[
                                                                '${'65e9fc18d908f0807f9ec72f4bd68071'.shieldDecode()}'][0]
                                                            ['${'7dd4c03fc0f61cb54548b66556e07655'.shieldDecode()}'])
                                                    .image,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(11, 0, 0, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    digitalAdventureCircleItem[
                                                            '${'65e9fc18d908f0807f9ec72f4bd68071'.shieldDecode()}'][0]
                                                        ['${'c5d7233e28081d3b82e53afe2708fb12'.shieldDecode()}'],
                                                    style: culturalAdaptationCoordinator.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .poppins(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                culturalAdaptationCoordinator.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF323232),
                                                          fontSize: 16,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              culturalAdaptationCoordinator.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                  Text(
                                                    digitalAdventureCircleItem[
                                                                '${'65e9fc18d908f0807f9ec72f4bd68071'.shieldDecode()}'][0]
                                                            ['${'a8f65b26df8fde5db0fda5ca4dfaa42b1411c65d5d5d02b1f08b33566c832406'.shieldDecode()}']
                                                        .toString(),
                                                    style: culturalAdaptationCoordinator.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .poppins(
                                                            fontWeight:
                                                                culturalAdaptationCoordinator.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                culturalAdaptationCoordinator.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0x80000000),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              culturalAdaptationCoordinator.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              culturalAdaptationCoordinator.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  DateFormat('${'a445ec2957de71b324a4073646346c2f'.shieldDecode()}').format(DateTime
                                                      .fromMillisecondsSinceEpoch(
                                                          digitalAdventureCircleItem[
                                                                      '${'65e9fc18d908f0807f9ec72f4bd68071'.shieldDecode()}'][0]
                                                                  [
                                                                  '${'72f570d9d57e8520e8d5423e31a94120'.shieldDecode()}']
                                                              as int)),
                                                  style: culturalAdaptationCoordinator.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
                                                          fontWeight:
                                                              culturalAdaptationCoordinator.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              culturalAdaptationCoordinator.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF979797),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            culturalAdaptationCoordinator.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            culturalAdaptationCoordinator.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ]),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: SereneOutdoorurneWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
