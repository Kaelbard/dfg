import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'highlightcards_model.dart';
export 'highlightcards_model.dart';

class HighlightcardsWidget extends StatefulWidget {
  const HighlightcardsWidget({Key? key}) : super(key: key);

  @override
  _HighlightcardsWidgetState createState() => _HighlightcardsWidgetState();
}

class _HighlightcardsWidgetState extends State<HighlightcardsWidget> {
  late HighlightcardsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HighlightcardsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: FutureBuilder<ApiCallResponse>(
        future: DFGHighlightcardsCall.call(),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(
                  color: FlutterFlowTheme.of(context).primaryColor,
                ),
              ),
            );
          }
          final pageViewDFGHighlightcardsResponse = snapshot.data!;
          return Builder(
            builder: (context) {
              final imagehighlight = (DFGHighlightcardsCall.imagem(
                        pageViewDFGHighlightcardsResponse.jsonBody,
                      )?.toList() ??
                      [])
                  .take(3)
                  .toList();
              return Container(
                width: 250,
                height: 250,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                  child: PageView.builder(
                    controller: _model.pageViewController ??= PageController(
                        initialPage: min(0, imagehighlight.length - 1)),
                    scrollDirection: Axis.horizontal,
                    itemCount: imagehighlight.length,
                    itemBuilder: (context, imagehighlightIndex) {
                      final imagehighlightItem =
                          imagehighlight[imagehighlightIndex];
                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Material(
                            color: Colors.transparent,
                            elevation: 1,
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  DFGHighlightcardsCall.imagem(
                                    pageViewDFGHighlightcardsResponse.jsonBody,
                                  )[imagehighlightIndex],
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
