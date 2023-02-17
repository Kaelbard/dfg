import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'produto_model.dart';
export 'produto_model.dart';

class ProdutoWidget extends StatefulWidget {
  const ProdutoWidget({Key? key}) : super(key: key);

  @override
  _ProdutoWidgetState createState() => _ProdutoWidgetState();
}

class _ProdutoWidgetState extends State<ProdutoWidget>
    with TickerProviderStateMixin {
  late ProdutoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProdutoModel());
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
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 50, 24, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Your Car',
                    style: FlutterFlowTheme.of(context).bodyText2,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fleet Model 42',
                    style: FlutterFlowTheme.of(context).title1,
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    buttonSize: 46,
                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24,
                    ),
                    onPressed: () async {
                      context.pop();
                    },
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/images/carFull@2x.png',
              width: MediaQuery.of(context).size.width,
              height: 200,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  '72',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Lexend Deca',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontWeight: FontWeight.w100,
                    fontSize: 92,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    'MPH',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText2,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    'Battery Status',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).subtitle2,
                  ),
                ],
              ),
            ),
            LinearPercentIndicator(
              percent: 0.4,
              width: MediaQuery.of(context).size.width * 0.9,
              lineHeight: 24,
              animation: true,
              progressColor: FlutterFlowTheme.of(context).primaryColor,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              barRadius: Radius.circular(40),
              padding: EdgeInsets.zero,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                        child: Text(
                          'Charge',
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ),
                      ),
                      Text(
                        '70%',
                        style: FlutterFlowTheme.of(context).title1,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                        child: Text(
                          'Range',
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ),
                      ),
                      Text(
                        '329m',
                        style: FlutterFlowTheme.of(context).title1,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                        child: Text(
                          'Status',
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ),
                      ),
                      Text(
                        'Good',
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).primaryColor,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: Container(
                height: 200,
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Car is Running',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle1
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 24),
                                  child: Text(
                                    'Put your car in park in order to turn your car off.',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -0.75),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).alternate,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 7,
                              color: Color(0x8E000000),
                              offset: Offset(0, 3),
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.power_settings_new_rounded,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
