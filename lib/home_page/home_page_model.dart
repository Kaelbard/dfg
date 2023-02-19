import '../components/appbar_widget.dart';
import '../components/category_widget.dart';
import '../components/comment_widget.dart';
import '../components/navbar_widget.dart';
import '../components/products_widget.dart';
import '../components/searchbar_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for appbar component.
  late AppbarModel appbarModel;
  // Model for searchbar component.
  late SearchbarModel searchbarModel;
  // Model for comment component.
  late CommentModel commentModel;
  // Model for products component.
  late ProductsModel productsModel;
  // Model for category component.
  late CategoryModel categoryModel;
  // Model for navbar component.
  late NavbarModel navbarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    appbarModel = createModel(context, () => AppbarModel());
    searchbarModel = createModel(context, () => SearchbarModel());
    commentModel = createModel(context, () => CommentModel());
    productsModel = createModel(context, () => ProductsModel());
    categoryModel = createModel(context, () => CategoryModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  void dispose() {
    appbarModel.dispose();
    searchbarModel.dispose();
    commentModel.dispose();
    productsModel.dispose();
    categoryModel.dispose();
    navbarModel.dispose();
  }

  /// Additional helper methods are added here.

}
