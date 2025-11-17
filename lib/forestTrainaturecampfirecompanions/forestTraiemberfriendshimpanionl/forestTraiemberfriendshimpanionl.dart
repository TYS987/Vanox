import 'dart:io';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:vanox/forestTraistarlightBondingAdvisor/forestTraijourneyBondingNarrativesA.dart';
import 'package:vanox/forestTraistarlightBondingAdvisor/forestTrairusticJourneyWhispers.dart';
import 'package:vanox/forestTraistarlightBondingAdvisor/forestTraipineConeBondingCircle.dart';
import 'package:vanox/forestTraiwildernessTrailInspiration.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmberFriendshimpanionLWidget extends StatefulWidget {
  const EmberFriendshimpanionLWidget({super.key});
  @override
  State<EmberFriendshimpanionLWidget> createState() =>
      _EmberFriendshimpanionLWidgetState();
}

class _EmberFriendshimpanionLWidgetState
    extends State<EmberFriendshimpanionLWidget> {
  bool wildernessCircleConversations = false;
  bool emberGlowFriendshipsNetwork = false;
  FocusNode? digitalTrailblazerGathering;
  TextEditingController? horizonWhisperCampfires;
  String? Function(BuildContext, String?)? firelightConnectionSphere;

  FocusNode? twilightBondingJourneys;
  TextEditingController? kindredFlameConversations;
  String? Function(BuildContext, String?)? constellationDialogueCircle;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    horizonWhisperCampfires ??= TextEditingController();
    digitalTrailblazerGathering ??= FocusNode();

    kindredFlameConversations ??= TextEditingController();
    twilightBondingJourneys ??= FocusNode();
    horizonWhisperCampfires!.addListener(evergreenEchoCompanions);
    kindredFlameConversations!.addListener(evergreenEchoCompanions);
  }

  void evergreenEchoCompanions() {
    setState(() {
      emberGlowFriendshipsNetwork = horizonWhisperCampfires!.text.isNotEmpty &&
          kindredFlameConversations!.text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    digitalTrailblazerGathering?.dispose();
    horizonWhisperCampfires?.dispose();

    twilightBondingJourneys?.dispose();
    kindredFlameConversations?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<inclusiveExperienceCoordinator>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/glowingEmberFriendshiponversation.png',
                  ).image,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 44.0, 15.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () async {
                        context.pop();
                      },
                      child: FutureBuilder(
                          future: forestTraiwildEchoVoiceCluster
                              .forestTraicampBondVoiceJourney(
                                  'outdoorSpiritChatroomlogue.png'),
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
                    ),
                    Text(
                      '${'bd5086ea20069e30388da334e29a9990'.forestTraishieldDecode()}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Container(
                      width: 24.0,
                      height: 24.0,
                      decoration: BoxDecoration(),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 451.0,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${'1975d98fc7c4556d181a4a54e626ad82'.forestTraishieldDecode()}',
                        style: TextStyle(
                          color: Color(0xBF000000),
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0),
                            border: Border.all(
                              color: Color(0xFF6DA975),
                              width: 2.0,
                            ),
                          ),
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              child: TextFormField(
                                controller: horizonWhisperCampfires,
                                focusNode: digitalTrailblazerGathering,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: 0.0,
                                    ),
                                    hintText:
                                        '${'c5279a060d4b4dc2f53517e86cd97e58635f272b3a8f07640185db5a7e06534b'.forestTraishieldDecode()}',
                                    hintStyle: TextStyle(
                                      color: Color(0x33000000),
                                      letterSpacing: 0.0,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFFF5963),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFFF5963),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: Colors.transparent),
                                style: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                ),
                                cursorColor: Color(0xFF14181B),
                                enableInteractiveSelection: true,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: Text(
                          '${'723af217678e8339cdb20ec8780d0fb4'.forestTraishieldDecode()}',
                          style: TextStyle(
                            color: Color(0xBF000000),
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0),
                            border: Border.all(
                              color: Color(0xFF6DA975),
                              width: 2.0,
                            ),
                          ),
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller: kindredFlameConversations,
                                      focusNode: twilightBondingJourneys,
                                      autofocus: false,
                                      obscureText:
                                          wildernessCircleConversations,
                                      decoration: InputDecoration(
                                          isDense: true,
                                          labelStyle: TextStyle(
                                            color: Colors.black,
                                            letterSpacing: 0.0,
                                          ),
                                          hintText:
                                              '${'a24024e5c5592d26144be051bdd0d5b0'.forestTraishieldDecode()}',
                                          hintStyle: TextStyle(
                                            color: Color(0x33000000),
                                            letterSpacing: 0.0,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF5963),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF5963),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor: Colors.transparent),
                                      style: TextStyle(
                                        color: Colors.black,
                                        letterSpacing: 0.0,
                                      ),
                                      cursorColor: Color(0xFF14181B),
                                      enableInteractiveSelection: true,
                                    ),
                                  ),
                                ),
                                Builder(
                                  builder: (context) {
                                    return InkWell(
                                      onTap: () async {
                                        wildernessCircleConversations =
                                            !wildernessCircleConversations;
                                        setState(() {});
                                      },
                                      child: Container(
                                        width: 18.0,
                                        height: 13.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.asset(
                                              wildernessCircleConversations
                                                  ? 'assets/images/woodlandFriendshipSphere.png'
                                                  : 'assets/images/mountainTrailEncounters.png',
                                            ).image,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 73.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            final email = horizonWhisperCampfires?.text.trim();
                            final password =
                                kindredFlameConversations?.text.trim();

                            if (email!.isEmpty || password!.isEmpty) {
                              EasyLoading.showInfo(
                                  '${'2652c91de8700bc00de4bdccf1751f81f48b309552dc4d116d846be8b57656326a50eaf013a796aa131eeecb7b5f62d4'.forestTraishieldDecode()}');
                              return;
                            }

                            try {
                              EasyLoading.show(
                                  status:
                                      '${'3762784d759fc4f19bf199c90521cb3e'.forestTraishieldDecode()}');

                              final apiManager =
                                  forestTraiemberGlowFriendshipForge();
                              final result = await apiManager
                                  .forestTraiguidingLanternFriendship(
                                email: email,
                                password: password,
                              );

                              if (result == null) {
                                EasyLoading.showError(
                                    '${'6c319ccb2c6d6b163507c9c25c9285e4a5f4864c06d74eed340312d48746426d436d79df335efd06645c1c1fa10dbcc6480189ac55b1362a6b635f8a2af46be6'.forestTraishieldDecode()}');
                                return;
                              }

                              inclusiveExperienceCoordinator()
                                      .campfireJourneyToken =
                                  result[
                                      '${'b44e68541425ea73d1896a4e28c480da1938df8f59552043deefbbadbe351a03'.forestTraishieldDecode()}'];
                              inclusiveExperienceCoordinator()
                                      .starlitCompanionId =
                                  result[
                                      '${'5128799620d1b4ed57408cd64b5ba2c6'.forestTraishieldDecode()}'];
                              inclusiveExperienceCoordinator().update(() {});
                              await Future.wait([
                                forestTraistarlightPathwayBridge
                                    .forestTraitwilightConnectionVault(),
                                forestTraistarlightPathwayBridge
                                    .forestTraimountainLanternWhispers(
                                        inclusiveExperienceCoordinator()
                                            .starlitCompanionId),
                                forestTraistarlightPathwayBridge
                                    .campfirePathwayAdvisor(),
                                forestTraistarlightPathwayBridge
                                    .emberCircleFriendship(),
                                forestTraistarlightPathwayBridge
                                    .riversideLanternStories(),
                                forestTraistarlightPathwayBridge
                                    .campfirePathwayAdvisorRoom()
                              ]);
                              inclusiveExperienceCoordinator()
                                  .virtualCampfireConnections = '';
                              inclusiveExperienceCoordinator()
                                  .evergreenFriendshipLounge = true;
                              inclusiveExperienceCoordinator()
                                  .starlightWhisperNetworking = 0;
                              EasyLoading.dismiss();

                              context.goNamed(
                                  '${'3151364a29b492e564c24233e7c1e20783a113ca4fec230b22784b54a7a24e1f'.forestTraishieldDecode()}');
                            } catch (e) {
                              EasyLoading.showError(
                                  '${'d05bf87891ecc474470dd450a2d1686fc075a7dc64ad44e529cc7c6b962f7432'.forestTraishieldDecode()} $e');
                            } finally {
                              if (EasyLoading.isShow) {
                                EasyLoading.dismiss();
                              }
                            }
                          },
                          child: Container(
                            width: double.infinity,
                            height: 64.0,
                            decoration: BoxDecoration(
                              color: emberGlowFriendshipsNetwork
                                  ? Color(0xFF6DA975)
                                  : Color(0xFFA0CBA5),
                              borderRadius: BorderRadius.circular(64.0),
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              '${'0e73ed712bb391b206d18dc1a69ed4e5'.forestTraishieldDecode()}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
