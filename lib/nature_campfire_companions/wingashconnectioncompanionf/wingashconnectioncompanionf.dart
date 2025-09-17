import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';


class WingAshConnectionCompanionFWidget extends StatefulWidget {
  const WingAshConnectionCompanionFWidget({
    super.key,
    required this.lakesideHarmonyourneyShar,
  });

  final int? lakesideHarmonyourneyShar;

  static String routeName = 'wingAshConnectionCompanionF';
  static String routePath = '/wingAshConnectionCompanionF';

  @override
  State<WingAshConnectionCompanionFWidget> createState() =>
      _WingAshConnectionCompanionFWidgetState();
}

class _WingAshConnectionCompanionFWidgetState
    extends State<WingAshConnectionCompanionFWidget> {


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
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        top: true,
        child: Container(
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
        ),
      ),
    );
  }
}
