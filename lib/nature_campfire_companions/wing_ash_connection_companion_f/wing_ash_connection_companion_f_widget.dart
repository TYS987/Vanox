import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'wing_ash_connection_companion_f_model.dart';
export 'wing_ash_connection_companion_f_model.dart';

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
  late WingAshConnectionCompanionFModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WingAshConnectionCompanionFModel());
  }

  @override
  void dispose() {
    _model.dispose();

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
