import 'package:cached_network_image/cached_network_image.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:vanox/Route/fangfa.dart';
import 'package:vanox/Route/tiaozhuan.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '../sereneoutdoorurne/sereneoutdoorurne.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class OutdoorJourneyCompanionsHWidget extends StatefulWidget {
  const OutdoorJourneyCompanionsHWidget({super.key});
  @override
  State<OutdoorJourneyCompanionsHWidget> createState() =>
      _OutdoorJourneyCompanionsHWidgetState();
}

class _OutdoorJourneyCompanionsHWidgetState
    extends State<OutdoorJourneyCompanionsHWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    MuzoiApiHelper.getGlamPostsRoom();
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
                          EdgeInsetsDirectional.fromSTEB(20.0, 44.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 109.0,
                            height: 52.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/starlightFriendshipLounge.png',
                                ).image,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              onTap: () async {
                                interstellarJourneyWebNavigator(
                                  context: context,
                                  quantumPortalPath: 'pages/CreateRoom/index',
                                );
                              },
                              child: Container(
                                width: double.infinity,
                                height: 194.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/woodlandGlowConversation.png',
                                    ).image,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 138.0,
                                child: Stack(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 79.76,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.asset(
                                            'assets/images/twilightJourneyVoices.png',
                                          ).image,
                                        ),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: Text(
                                            'Friend Recommendation',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Colors.white,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 1),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 12, 0),
                                        child: Builder(
                                          builder: (context) {
                                            final forestJourneyCompanion =
                                                FFAppState()
                                                    .starlightCampfireProfiles
                                                    .toList();

                                            return Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: List.generate(
                                                  forestJourneyCompanion.length,
                                                  (forestJourneyCompanionIndex) {
                                                final forestJourneyCompanionItem =
                                                    forestJourneyCompanion[
                                                        forestJourneyCompanionIndex];
                                                return InkWell(
                                                    onTap: () async {
                                                      print(
                                                          "当前用户的数据${forestJourneyCompanionItem['campfireGatherings']}");
                                                      print(
                                                          "当前用户的数据${forestJourneyCompanionItem['campingSpirit']}");

                                                      interstellarJourneyWebNavigator(
                                                        context: context,
                                                        quantumPortalPath:
                                                            'pages/homepage/index',
                                                        cosmicQueryParams: {
                                                          'userId':
                                                              forestJourneyCompanionItem[
                                                                  'campfireGatherings'],
                                                        },
                                                        onGalaxyReturnRefresh:
                                                            () async {
                                                          if (!mounted) return;

                                                          try {
                                                            await Future.wait([
                                                              MuzoiApiHelper
                                                                  .getGlamPosts(),
                                                              MuzoiApiHelper
                                                                  .getUserProfile(
                                                                      FFAppState()
                                                                          .starlitCompanionId),
                                                            ]);

                                                            setState(() {});
                                                          } catch (e) {
                                                            debugPrint('$e');
                                                          }
                                                        },
                                                      );
                                                    },
                                                    child: Container(
                                                      width: 75,
                                                      height: 93,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 9,
                                                            color:
                                                                Color.fromARGB(
                                                                    51,
                                                                    92,
                                                                    87,
                                                                    87),
                                                            offset:
                                                                Offset(5, 1),
                                                            spreadRadius: 5,
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        6,
                                                                        0,
                                                                        0),
                                                            child: Container(
                                                              width: 63,
                                                              height: 60,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12),
                                                              ),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12),
                                                                child: FadeInImage
                                                                    .memoryNetwork(
                                                                  placeholder:
                                                                      kTransparentImage,
                                                                  placeholderErrorBuilder:
                                                                      (context,
                                                                          error,
                                                                          stackTrace) {
                                                                    return Center(
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        valueColor:
                                                                            AlwaysStoppedAnimation<Color>(Colors.blue),
                                                                      ),
                                                                    );
                                                                  },
                                                                  image: forestJourneyCompanionItem[
                                                                      'voiceRooms'],
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  width: 63,
                                                                  height: 60,
                                                                  imageErrorBuilder:
                                                                      (context,
                                                                          error,
                                                                          stackTrace) {
                                                                    return Container(
                                                                      color: const Color
                                                                          .fromARGB(
                                                                          255,
                                                                          235,
                                                                          113,
                                                                          113),
                                                                      child: Center(
                                                                          child:
                                                                              Icon(Icons.error)),
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        6,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              forestJourneyCompanionItem[
                                                                      'digitalCampfire']
                                                                  .toString(),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    fontSize:
                                                                        10,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                    color: const Color
                                                                        .fromARGB(
                                                                        255,
                                                                        0,
                                                                        0,
                                                                        0),
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ));
                                              }).divide(SizedBox(width: 4)),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: Builder(
                                builder: (context) {
                                  final virtualCampfireLounge = FFAppState()
                                      .starlitCampfireVoiceChats
                                      .toList();
                                  return MasonryGridView.builder(
                                    gridDelegate:
                                        SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                    ),
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                    itemCount: virtualCampfireLounge.length,
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.zero,
                                    itemBuilder:
                                        (context, virtualCampfireLoungeIndex) {
                                      final virtualCampfireLoungeItem =
                                          virtualCampfireLounge[
                                              virtualCampfireLoungeIndex];
                                      return InkWell(
                                        onTap: () async {
                                          print(
                                              "当前虚拟房间的所有信息${virtualCampfireLoungeItem}"); //713984477061190

                                          interstellarJourneyWebNavigator(
                                            context: context,
                                            quantumPortalPath:
                                                'pages/JoinLiveRoom/index',
                                            cosmicQueryParams: {
                                              'channel':
                                                  virtualCampfireLoungeItem[
                                                      'forestExpert'],
                                              'userId': virtualCampfireLoungeItem[
                                                      'mountainExpert'],
                                            },
                                            onGalaxyReturnRefresh: () async {
                                              if (!mounted) return;

                                              try {
                                                await Future.wait([
                                                  MuzoiApiHelper.getGlamPosts(),
                                                  MuzoiApiHelper.getUserProfile(
                                                      FFAppState()
                                                          .starlitCompanionId),
                                                ]);

                                                setState(() {});
                                              } catch (e) {
                                                debugPrint('$e');
                                              }
                                            },
                                          );
                                        },
                                        child: Container(
                                          height: 221,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Container(
                                            width: double.infinity,
                                            height: 211,
                                            child: Stack(
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(0),
                                                        bottomRight:
                                                            Radius.circular(0),
                                                        topLeft:
                                                            Radius.circular(16),
                                                        topRight:
                                                            Radius.circular(16),
                                                      ),
                                                      child: CachedNetworkImage(
                                                        imageUrl:
                                                            virtualCampfireLoungeItem[
                                                                    'campingExpert']
                                                                .toString(),
                                                        width: 200,
                                                        height: 172,
                                                        fit: BoxFit.cover,
                                                        placeholder:
                                                            (context, url) =>
                                                                Container(
                                                          color:
                                                              Colors.grey[400],
                                                          width: 200,
                                                          height: 172,
                                                          child: Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      const Color
                                                                          .fromARGB(
                                                                          255,
                                                                          231,
                                                                          189,
                                                                          151)),
                                                            ),
                                                          ),
                                                        ),
                                                        errorWidget: (context,
                                                                url, error) =>
                                                            Container(
                                                          color:
                                                              Colors.grey[300],
                                                          width: 200,
                                                          height: 172,
                                                          child: Center(
                                                            child: Icon(
                                                              Icons.error,
                                                              color: Colors.red,
                                                              size: 50,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  virtualCampfireLoungeItem[
                                                                      'campingSpecialist'],
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .poppins(
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Color(
                                                                            0xFFB2B4C2),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  virtualCampfireLoungeItem[
                                                                      'adventureExpert'],
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .poppins(
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Color(
                                                                            0xFF6DA975),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  maxLines: 1,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 12, 0),
                                                          child: Container(
                                                            width: 32,
                                                            height: 32,
                                                            decoration:
                                                                BoxDecoration(
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .contain,
                                                                image:
                                                                    Image.asset(
                                                                  'assets/images/Frame_26088130@3x.png',
                                                                ).image,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  width: 62,
                                                  height: 25,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.asset(
                                                        'assets/images/flickeringEmberGathering.png',
                                                      ).image,
                                                    ),
                                                  ),
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 13, 0),
                                                    child: Text(
                                                      virtualCampfireLoungeItem[
                                                              'forestSpecialist']
                                                          .toString(),
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .inter(
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
                                                            color: Colors.white,
                                                            fontSize: 11,
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
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            )
                          ].addToEnd(SizedBox(height: 150.0)),
                        ),
                      ),
                    ),
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
