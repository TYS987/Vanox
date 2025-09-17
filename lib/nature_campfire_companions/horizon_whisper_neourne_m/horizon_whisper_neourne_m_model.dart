import '/flutter_flow/flutter_flow_util.dart';
import '/nature_campfire_companions/serene_outdoorurne/serene_outdoorurne_widget.dart';
import 'horizon_whisper_neourne_m_widget.dart'
    show HorizonWhisperNeourneMWidget;
import 'package:flutter/material.dart';

class HorizonWhisperNeourneMModel
    extends FlutterFlowModel<HorizonWhisperNeourneMWidget> {
  ///  Local state fields for this page.

  int? moonriseFriendswilderness = 0;

  ///  State fields for stateful widgets in this page.

  // Model for sereneOutdoorurne component.
  late SereneOutdoorurneModel sereneOutdoorurneModel;

  @override
  void initState(BuildContext context) {
    sereneOutdoorurneModel =
        createModel(context, () => SereneOutdoorurneModel());
  }

  @override
  void dispose() {
    sereneOutdoorurneModel.dispose();
  }
}
