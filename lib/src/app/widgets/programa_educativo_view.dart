import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../utils/app_theme.dart';

class ProgramaEducativoView extends StatelessWidget {
  final String titulo;
  final String subTitulo;
  final String foto;

  const ProgramaEducativoView({Key key, this.titulo, this.subTitulo, this.foto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height*0.30,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(left: 8, right: 8, top: 0, bottom: 16),
        child:
        Stack(
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              Positioned(
                top: -10.0,
                left: 0.0,
                right: 0.0,
                child:  Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 24, bottom: 0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppTheme.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                                topRight: Radius.circular(8.0)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: AppTheme.grey.withOpacity(0.4),
                                  offset: Offset(1.1, 1.1),
                                  blurRadius: 10.0),
                            ],
                          ),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                                child: SizedBox(
                                  height: 74,
                                  child: AspectRatio(
                                    aspectRatio: 1.714,
                                    child: Image.asset(
                                        "assets/fitness_app/back.png"),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 100,
                                          right: 16,
                                          top: 16,
                                        ),
                                        child: Text(
                                          titulo,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontFamily:
                                            AppTheme.fontName,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            letterSpacing: 0.0,
                                            color:
                                            AppTheme.nearlyDarkBlue,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 100,
                                      bottom: 12,
                                      top: 4,
                                      right: 16,
                                    ),
                                    child: Text(
                                      subTitulo,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontFamily: AppTheme.fontName,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        letterSpacing: 0.0,
                                        color: AppTheme.grey
                                            .withOpacity(0.5),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 70,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
                            child: CachedNetworkImage(
                                height: 60,
                                width: 60,
                                placeholder: (context, url) => CircularProgressIndicator(),
                                imageUrl: foto,
                                imageBuilder: (context, imageProvider) => Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(50)),
                                        image: DecorationImage(
                                          image: imageProvider,
                                          fit: BoxFit.cover,
                                        ),
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(color: AppTheme.grey.withOpacity(0.6), offset: const Offset(1.0, 4.0), blurRadius: 8),
                                        ]
                                    )
                                )
                            ),
                          ),
                        ),
                      )
                      /*SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset("assets/fitness_app/runner.png"),
                      )*/
                    ]
                ),
              )
            ]
        )
    );
  }
}
