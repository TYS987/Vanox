import '/flutter_flow/flutter_flow_util.dart';
import '/nature_campfire_companions/serene_outdoorurne/serene_outdoorurne_widget.dart';
import 'outdoor_journey_companions_h_widget.dart'
    show OutdoorJourneyCompanionsHWidget;
import 'package:flutter/material.dart';

class OutdoorJourneyCompanionsHModel
    extends FlutterFlowModel<OutdoorJourneyCompanionsHWidget> {
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
