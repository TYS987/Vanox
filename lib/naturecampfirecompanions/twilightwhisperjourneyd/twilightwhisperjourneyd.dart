import 'package:vanox/Route/fangfa.dart';
import 'package:vanox/Route/tiaozhuan.dart';
import 'package:vanox/app_state.dart';
import 'package:vanox/flutter_flow/flutter_flow_util.dart';

import '/flutter_flow/flutter_flow_theme.dart';
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

    MuzoiApiHelper.togglePostMessage();
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                                quantumPortalPath: 'pages/Notice/index',
                                onGalaxyReturnRefresh: () {
                                  if (mounted) {
                                    MuzoiApiHelper.togglePostMessage()
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
                              FFAppState().starlightCampfireMessages.toList();
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
                                        'pages/DetailsMesses/index?',
                                    cosmicQueryParams: {
                                      'userId': digitalAdventureCircleItem[
                                              'trailPlanner'][0]
                                          ['wildernessPlanner'],
                                    },
                                    onGalaxyReturnRefresh: () async {
                                      if (!mounted) return;

                                      try {
                                        await Future.wait([
                                          MuzoiApiHelper.togglePostMessage(),
                                          MuzoiApiHelper.getUserProfile(
                                              FFAppState().starlitCompanionId),
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
                                                                'trailPlanner'][0]
                                                            ['mountainPlanner'])
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
                                                            'trailPlanner'][0]
                                                        ['forestPlanner'],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .poppins(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
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
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                  Text(
                                                    digitalAdventureCircleItem[
                                                                'trailPlanner'][0]
                                                            ['adventurePlanner']
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .poppins(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0x80000000),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
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
                                                  DateFormat('HH.mm').format(DateTime
                                                      .fromMillisecondsSinceEpoch(
                                                          digitalAdventureCircleItem[
                                                                      'trailPlanner'][0]
                                                                  [
                                                                  'forestScout']
                                                              as int)),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF979797),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
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
