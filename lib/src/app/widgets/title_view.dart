
import 'package:flutter/material.dart';

import '../utils/app_theme.dart';

class TitleView extends StatelessWidget {
  final String titleTxt;
  final String subTxt;
  final AnimationController animationController;
  final Animation animation;
  final Function onClick;
  const TitleView(
      {Key key,
      this.titleTxt: "",
      this.subTxt: "",
      this.animationController,
      this.animation,
      this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    var widgetList = <Widget>[
      Expanded(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: 18),
          child:  Text(
            titleTxt,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: AppTheme.fontName,
              fontWeight: FontWeight.w500,
              fontSize: 16,
              letterSpacing: 0.5,
              color: AppTheme.colorPrimary,
            ),
          ),
        ),
      ),
    ];

    if(this.subTxt!=null){
      widgetList.add( InkWell(
        highlightColor: Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        onTap: () {
          if(onClick!=null)onClick();
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            children: <Widget>[
              Text(
                subTxt,
                softWrap: true,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: AppTheme.fontName,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  letterSpacing: 0.5,
                  color: AppTheme.colorPrimary,
                ),
              ),
              SizedBox(
                height: 38,
                width: 26,
                child: Icon(
                  Icons.arrow_forward,
                  color: AppTheme.colorPrimary,
                  size: 14,
                ),
              )
            ],
          ),
        ),
      ));
    }

    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return FadeTransition(
          opacity: animation,
          child: new Transform(
            transform: new Matrix4.translationValues(
                0.0, 30 * (1.0 - animation.value), 0.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  children: widgetList,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
