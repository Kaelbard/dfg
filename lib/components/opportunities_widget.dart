import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'opportunities_model.dart';
export 'opportunities_model.dart';

class OpportunitiesWidget extends StatefulWidget {
  const OpportunitiesWidget({Key? key}) : super(key: key);

  @override
  _OpportunitiesWidgetState createState() => _OpportunitiesWidgetState();
}

class _OpportunitiesWidgetState extends State<OpportunitiesWidget> {
  late OpportunitiesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OpportunitiesModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500.0,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
            child: PageView(
              controller: _model.pageViewController ??=
                  PageController(initialPage: 0),
              scrollDirection: Axis.horizontal,
              children: [
                Image.network(
                  'https://picsum.photos/seed/573/600',
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://picsum.photos/seed/131/600',
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://picsum.photos/seed/69/600',
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: smooth_page_indicator.SmoothPageIndicator(
                controller: _model.pageViewController ??=
                    PageController(initialPage: 0),
                count: 3,
                axisDirection: Axis.horizontal,
                onDotClicked: (i) {
                  _model.pageViewController!.animateToPage(
                    i,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                },
                effect: smooth_page_indicator.ExpandingDotsEffect(
                  expansionFactor: 2.0,
                  spacing: 8.0,
                  radius: 16.0,
                  dotWidth: 16.0,
                  dotHeight: 16.0,
                  dotColor: Color(0xFF9E9E9E),
                  activeDotColor: Color(0xFF3F51B5),
                  paintStyle: PaintingStyle.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
