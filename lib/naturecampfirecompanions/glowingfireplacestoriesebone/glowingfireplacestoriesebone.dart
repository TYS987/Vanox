import 'package:flutter/gestures.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:vanox/starlightBondingAdvisor/pineConeBondingCircle.dart';

import '../../localizationExperienceFacilitator/dataProtectionGuardian.dart';
import '../../localizationExperienceFacilitator/securityEnforcementFramework.dart';
import '../serenestarlightconnectioninfriendsh/serenestarlightconnectioninfriendsh.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlowingFireplaceStorieseBonEWidget extends StatefulWidget {
  const GlowingFireplaceStorieseBonEWidget({super.key});
  @override
  State<GlowingFireplaceStorieseBonEWidget> createState() =>
      _GlowingFireplaceStorieseBonEWidgetState();
}

class _GlowingFireplaceStorieseBonEWidgetState
    extends State<GlowingFireplaceStorieseBonEWidget> {
  int? evergreenBondndshiprircle = 0;
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: Image.asset(
                'assets/images/glowingEmberFriendshiponversation.png',
              ).image,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(1.0, -1.0),
                child: Builder(
                  builder: (context) => Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 64.0, 15.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          enableDrag: false,
                          context: context,
                          builder: (context) {
                            return GestureDetector(
                              onTap: () {
                                FocusScope.of(context).unfocus();
                                FocusManager.instance.primaryFocus?.unfocus();
                              },
                              child: Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child:
                                    SereneStarlightConnectioninFriendshWidget(),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                      child: Container(
                        width: 80.0,
                        height: 36.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/moonlitWhisperCoEncountersy.png',
                            ).image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Container(
                width: 98.0,
                height: 98.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/natureInspiredConversations.png',
                    ).image,
                  ),
                  borderRadius: BorderRadius.circular(23.0),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 21.0, 15.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (inclusiveExperienceCoordinator().outdoorAdventureDialogues == 1) {
                          context.pushNamed(
                              '${'0b8e21fcd418e1b1a204fa2d30cdc8901637f299ef17475a265c9618e186f595'.shieldDecode()}');
                        } else {
                          EasyLoading.showError(
                              '${'c6b32378ddf3b4494ba61ae699e32162684df7a5f0b777d4a3d010d99f3625da2afe9a0a4827a646fe3bda1a7bad70e4'.shieldDecode()}');
                        }
                      },
                      child: Container(
                        width: double.infinity,
                        height: 64.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(60.0),
                          border: Border.all(
                            color: Color(0xFF6DA975),
                            width: 2.0,
                          ),
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          '${'867b328d287896d34abae951677b1323'.shieldDecode()}',
                          style:
                              culturalAdaptationCoordinator.of(context).bodyMedium.override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: culturalAdaptationCoordinator.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF6DA975),
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: culturalAdaptationCoordinator.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(66.0, 71.0, 66.0, 35.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Builder(
                      builder: (context) {
                        if (inclusiveExperienceCoordinator().outdoorAdventureDialogues == 0) {
                          return InkWell(
                            onTap: () async {
                              inclusiveExperienceCoordinator().outdoorAdventureDialogues = 1;
                              inclusiveExperienceCoordinator().update(() {});
                              setState(() {});
                            },
                            child: Container(
                              width: 15.0,
                              height: 15.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: Color(0xFF6DA975),
                                    width: 1.0,
                                  )),
                            ),
                          );
                        } else {
                          return InkWell(
                            onTap: () async {
                              inclusiveExperienceCoordinator().outdoorAdventureDialogues = 0;
                              inclusiveExperienceCoordinator().update(() {});
                              setState(() {});
                            },
                            child: Container(
                              width: 15.0,
                              height: 15.0,
                              decoration: BoxDecoration(
                                color: Color(0x1A1B1B1B),
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: Color(0xFF6DA975),
                                  width: 1.0,
                                ),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/mountainConversationriverside.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        }
                      },
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    '${'32fd7d54800ec6089ec919d3a2bc71d9'.shieldDecode()} ',
                                style: culturalAdaptationCoordinator.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: culturalAdaptationCoordinator.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF9A9A9A),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: culturalAdaptationCoordinator.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              TextSpan(
                                text:
                                    '${'3934488dde5d20cdb7df5782cccf4730'.shieldDecode()}',
                                style: culturalAdaptationCoordinator.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: culturalAdaptationCoordinator.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: culturalAdaptationCoordinator.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF9A9A9A),
                                      letterSpacing: 0.0,
                                      fontWeight: culturalAdaptationCoordinator.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: culturalAdaptationCoordinator.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                      decoration: TextDecoration.underline,
                                    ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    final stemStructu =
                                        '${'1a52c0bd4a059625e1fc48e5e6cfdb2bfac60e521debc0b25b4c61a564e92b68da66f1afbe62d214c047cc6b6f39a633f49885a241daa156c4f68f4230c62dea'.shieldDecode()}${1}${'5946d8d0a03674c299afb7ff06b0a16f'.shieldDecode()}${inclusiveExperienceCoordinator().campfireJourneyToken}${'07460cd5c3d487c2432e5a8f4ba0bdd9'.shieldDecode()}${57624642}';

                                    final lowerMeditation =
                                        Uri.encodeComponent(stemStructu);

                                    GoRouter.of(context).push(
                                      '${'1e3c4c39edf66ed8fa6f2e2609bbeb409a1fb6c59d1ada02747160e71dcd4a4f'.shieldDecode()}',
                                      extra: {
                                        '${'132a43c3b6771c8534ca8aaecb6ad591610de1c7e392fbffa9002f99e8a524d5'.shieldDecode()}':
                                            lowerMeditation,
                                      },
                                    );
                                  },
                              ),
                              TextSpan(
                                text:
                                    ' ${'a645e46a92b2a02da5e54d71dca77a3e'.shieldDecode()} ',
                                style: culturalAdaptationCoordinator.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: culturalAdaptationCoordinator.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: culturalAdaptationCoordinator.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF9A9A9A),
                                      letterSpacing: 0.0,
                                      fontWeight: culturalAdaptationCoordinator.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: culturalAdaptationCoordinator.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              TextSpan(
                                text:
                                    '${'ab7cc3e9671afc63305a0445ed544fbdffbec82bb20f3fe5054acffcc4f0c90d'.shieldDecode()}',
                                style: culturalAdaptationCoordinator.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: culturalAdaptationCoordinator.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: culturalAdaptationCoordinator.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF9A9A9A),
                                      letterSpacing: 0.0,
                                      fontWeight: culturalAdaptationCoordinator.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: culturalAdaptationCoordinator.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                      decoration: TextDecoration.underline,
                                    ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    final stemStructu =
                                        '${'1a52c0bd4a059625e1fc48e5e6cfdb2bfac60e521debc0b25b4c61a564e92b68da66f1afbe62d214c047cc6b6f39a633f49885a241daa156c4f68f4230c62dea'.shieldDecode()}${2}${'5946d8d0a03674c299afb7ff06b0a16f'.shieldDecode()}${inclusiveExperienceCoordinator().campfireJourneyToken}${'07460cd5c3d487c2432e5a8f4ba0bdd9'.shieldDecode()}${57624642}';

                                    final lowerMeditation =
                                        Uri.encodeComponent(stemStructu);

                                    GoRouter.of(context).push(
                                      '${'1e3c4c39edf66ed8fa6f2e2609bbeb409a1fb6c59d1ada02747160e71dcd4a4f'.shieldDecode()}',
                                      extra: {
                                        '${'132a43c3b6771c8534ca8aaecb6ad591610de1c7e392fbffa9002f99e8a524d5'.shieldDecode()}':
                                            lowerMeditation,
                                      },
                                    );
                                  },
                              )
                            ],
                            style: culturalAdaptationCoordinator.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: culturalAdaptationCoordinator.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF9A9A9A),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: culturalAdaptationCoordinator.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
