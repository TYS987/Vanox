import 'package:cached_network_image/cached_network_image.dart';
import 'package:vanox/Route/fangfa.dart';
import 'package:vanox/Route/jiam.dart';
import 'package:vanox/Route/tiaozhuan.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '../sereneoutdoorurne/sereneoutdoorurne.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 50);
    path.quadraticBezierTo(size.width / 2, 70, size.width, 50);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class RusticOutdoorFriendshipVWidget extends StatefulWidget {
  const RusticOutdoorFriendshipVWidget({super.key});
  @override
  State<RusticOutdoorFriendshipVWidget> createState() =>
      _RusticOutdoorFriendshipVWidgetState();
}

class _RusticOutdoorFriendshipVWidgetState
    extends State<RusticOutdoorFriendshipVWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    MuzoiApiHelper.getGlamPosts();
    MuzoiApiHelper.getChaxuanVideoDetails();
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
                            width: 162.0,
                            height: 52.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.asset(
                                  'assets/images/scenicOutdoorBonding.png',
                                ).image,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(19.0, 18.0, 18.0, 0.0),
                      child: InkWell(
                        onTap: () async {
                          interstellarJourneyWebNavigator(
                            context: context,
                            quantumPortalPath: '${'3d43c4e0311304a3c9bd84f1ec03325e34782e17e0d1bba022671aaf51e3eeae'.shieldDecode()}',
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 48.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/emberSparkNetworking.png',
                              ).image,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 18.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 163,
                                    height: 163,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 35,
                                          child: Stack(
                                            children: [
                                              Container(
                                                width: 98,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.asset(
                                                      'assets/images/evergreenBondingNetwork.png',
                                                    ).image,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(1, 1),
                                                child: Container(
                                                  width: 25,
                                                  height: 12,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      fit: BoxFit.contain,
                                                      image: Image.asset(
                                                        'assets/images/twilightCircleDialogues.png',
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
                                              final digitalMemoryCollector =
                                                  FFAppState()
                                                      .starlitCampfireJourneyPosts
                                                      .toList();
                                              return ListView.separated(
                                                padding: EdgeInsets.fromLTRB(
                                                  0,
                                                  0,
                                                  0,
                                                  30,
                                                ),
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    digitalMemoryCollector
                                                        .length,
                                                separatorBuilder: (_, __) =>
                                                    SizedBox(height: 5),
                                                itemBuilder: (context,
                                                    digitalMemoryCollectorIndex) {
                                                  final digitalMemoryCollectorItem =
                                                      digitalMemoryCollector[
                                                          digitalMemoryCollectorIndex];
                                                  return InkWell(
                                                    onTap: () async {
                                                      interstellarJourneyWebNavigator(
                                                        context: context,
                                                        quantumPortalPath:
                                                            '${'cc6f4771a20f3945d0a9ba718c59978514f5d1eee58235939d09fd6517b7724d'.shieldDecode()}',
                                                        cosmicQueryParams: {
                                                          '${'ba342dcf6be8ec4d97b7e19c00304ef9'.shieldDecode()}':
                                                              digitalMemoryCollectorItem[
                                                                  '${'a8e99140031db97b0c45a86477185a17'.shieldDecode()}'],
                                                        },
                                                        onGalaxyReturnRefresh:
                                                            () async {
                                                          if (!mounted) return;

                                                          try {
                                                            await Future.wait([
                                                              MuzoiApiHelper
                                                                  .getChaxuanVideoDetails(),
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
                                                      width: 163,
                                                      height: 36,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        border: Border.all(
                                                          color:
                                                              Color(0xFFCFD2E3),
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 0,
                                                                    10, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                digitalMemoryCollectorItem[
                                                                        '${'11bb639e33bb4aa460d41e4af0eb1ae1'.shieldDecode()}']
                                                                    .toString(),
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
                                                                          0xFF081035),
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
                                                                    ),
                                                                maxLines: 1,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Container(
                                                                width: 24,
                                                                height: 24,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  image:
                                                                      DecorationImage(
                                                                    fit: BoxFit
                                                                        .cover,
                                                                    image: Image
                                                                        .asset(
                                                                      'assets/images/rusticConnectionCircle.png',
                                                                    ).image,
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
                                        ),
                                      ].divide(SizedBox(height: 5)),
                                    ),
                                  ),
                                  Container(
                                    width: 163.0,
                                    height: 160.0,
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 163.0,
                                          height: 160.0,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            child: CachedNetworkImage(
                                              imageUrl: FFAppState()
                                                  .starlitCampfireJourneyPosts
                                                  .toList()[0]['${'f92e0df6780b073ae54d3b8c55ac86e0'.shieldDecode()}']
                                                      [0]
                                                  .toString(),
                                              width: 163.0,
                                              height: 160.0,
                                              fit: BoxFit.cover,
                                              placeholder: (context, url) =>
                                                  Container(
                                                color: Colors.grey[400],
                                                width: 163.0,
                                                height: 160.0,
                                                child: Center(
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                                Color>(
                                                            const Color
                                                                .fromARGB(255,
                                                                143, 226, 140)),
                                                  ),
                                                ),
                                              ),
                                              errorWidget:
                                                  (context, url, error) =>
                                                      Container(
                                                color: Colors.grey[300],
                                                width: 163.0,
                                                height: 160.0,
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
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 55.0,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.asset(
                                                  'assets/images/wildernessEchoVoices.png',
                                                ).image,
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(15.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFAppState()
                                                              .starlitCampfireJourneyPosts
                                                              .toList()[0][
                                                                  '${'48336662b26b7165c7d7a6f675e3d2fb'.shieldDecode()}']
                                                              .toString(), 
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Text(
                                                          FFAppState()
                                                              .starlitCampfireJourneyPosts
                                                              .toList()[0][
                                                                  '${'11bb639e33bb4aa460d41e4af0eb1ae1'.shieldDecode()}']
                                                              .toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                          maxLines: 1,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 14.0, 0.0),
                                                  child: Container(
                                                    width: 24.0,
                                                    height: 24.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.asset(
                                                          'assets/images/firesideWhisperDialogues.png',
                                                        ).image,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: ClipPath(
                                clipper: TopCurveClipper(),
                                child: Container(
                                  width: double.infinity,
                                  height: 351.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFE4F6E7),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 58, 0, 32),
                                    child: Builder(
                                      builder: (context) {
                                        final wildernessFriendshipCircle =
                                            FFAppState()
                                                .virtualWildernessRetreatRooms
                                                .toList();
                                        return SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: List.generate(
                                                    wildernessFriendshipCircle
                                                        .length,
                                                    (wildernessFriendshipCircleIndex) {
                                              final wildernessFriendshipCircleItem =
                                                  wildernessFriendshipCircle[
                                                      wildernessFriendshipCircleIndex];
                                              return InkWell(
                                                  onTap: () async {
                                                    interstellarJourneyWebNavigator(
                                                      context: context,
                                                      quantumPortalPath:
                                                          '${'d2fe0f09936609b8bfb2aca104a8b343c2b81cb662684c07d27cb54c172a828f'.shieldDecode()}',
                                                      cosmicQueryParams: {
                                                        '${'ba342dcf6be8ec4d97b7e19c00304ef9'.shieldDecode()}':
                                                            wildernessFriendshipCircleItem[
                                                                '${'a8e99140031db97b0c45a86477185a17'.shieldDecode()}'],
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
                                                    width: 145,
                                                    height: 201,
                                                    child: Stack(
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                          child:
                                                              CachedNetworkImage(
                                                            imageUrl:
                                                                wildernessFriendshipCircleItem[
                                                                        '${'a9d45d6e9423bd33032e08940ab216fb'.shieldDecode()}']
                                                                    .toString(),
                                                            width: 145,
                                                            height: 201,
                                                            fit: BoxFit.cover,
                                                            placeholder:
                                                                (context,
                                                                        url) =>
                                                                    Container(
                                                              color: Colors
                                                                  .grey[400],
                                                              width: 145,
                                                              height: 201,
                                                              child: Center(
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  valueColor: AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors
                                                                          .blue),
                                                                ),
                                                              ),
                                                            ),
                                                            errorWidget:
                                                                (context, url,
                                                                        error) =>
                                                                    Container(
                                                              color: Colors
                                                                  .grey[300],
                                                              width: 145,
                                                              height: 201,
                                                              child: Center(
                                                                child: Icon(
                                                                  Icons.error,
                                                                  color: Colors
                                                                      .red,
                                                                  size: 50,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(4,
                                                                      4, 0, 0),
                                                          child: Container(
                                                            width: 55,
                                                            height: 22,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x336DA975),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          5,
                                                                          5,
                                                                          5),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFF6DA975),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          8.3,
                                                                      height:
                                                                          10,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        image:
                                                                            DecorationImage(
                                                                          fit: BoxFit
                                                                              .cover,
                                                                          image:
                                                                              Image.asset(
                                                                            'assets/images/sunriseCampfireHarmony.png',
                                                                          ).image,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      wildernessFriendshipCircleItem[
                                                                              '${'1874cdef85bd20bd44812d94e57f43d9'.shieldDecode()}']
                                                                          .toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.inter(
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color:
                                                                                Colors.white,
                                                                            fontSize:
                                                                                7,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1, 1),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        6,
                                                                        5),
                                                            child: Container(
                                                              width: 32,
                                                              height: 32,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  image: Image
                                                                      .asset(
                                                                    'assets/images/glowingEmberFriendship.png',
                                                                  ).image,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ));
                                            })
                                                .divide(SizedBox(width: 10))
                                                .addToStart(SizedBox(width: 16))
                                                .addToEnd(SizedBox(width: 20)),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      interstellarJourneyWebNavigator(
                                        context: context,
                                        quantumPortalPath: '${'ee260e2fc46139f3d47d58ead26e3fadf18588f59a9953cb38ee202ace29845a'.shieldDecode()}',
                                      );
                                    },
                                    child: Container(
                                      width: 162.0,
                                      height: 44.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.contain,
                                          image: Image.asset(
                                            'assets/images/moonriseFriendshipLounge.png',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      interstellarJourneyWebNavigator(
                                        context: context,
                                        quantumPortalPath:
                                            '${'00534b0d6536541e2d3928d1605f87b305d3905c4616a9ed4e0d45901abd811f'.shieldDecode()}',
                                      );
                                    },
                                    child: Container(
                                      width: 162.0,
                                      height: 44.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.contain,
                                          image: Image.asset(
                                            'assets/images/lakesideJourneySharing.png',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].addToEnd(SizedBox(height: 200.0)),
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
