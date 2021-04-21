import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:tederaadmin/screen/home/home_widget.dart';

class BaseBottomSheet extends StatelessWidget {
  final Widget child;
  final bool isCartShow;

  BaseBottomSheet({this.child,this.isCartShow=true});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0)),
              child:Container(
                color: Colors.white,
                width: kIsWeb?375:double.infinity,
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: SingleChildScrollView(
                    controller: ModalScrollController.of(context),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.close,
                            color: Colors.black,
                            size: 16,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: child,
                        ),

                      ],
                    )),
              ),
          ),

        ],
      ),
    );
  }
}
