import '/components/navbar_widget.dart';
import '/components/products_widget.dart';
import '/components/searchbar_widget.dart';
import '/components/viewbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for viewbar component.
  late ViewbarModel viewbarModel;
  // Model for searchbar component.
  late SearchbarModel searchbarModel;
  // Model for products component.
  late ProductsModel productsModel;
  // Model for navbar component.
  late NavbarModel navbarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    viewbarModel = createModel(context, () => ViewbarModel());
    searchbarModel = createModel(context, () => SearchbarModel());
    productsModel = createModel(context, () => ProductsModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  void dispose() {
    viewbarModel.dispose();
    searchbarModel.dispose();
    productsModel.dispose();
    navbarModel.dispose();
  }

  /// Additional helper methods are added here.

}
