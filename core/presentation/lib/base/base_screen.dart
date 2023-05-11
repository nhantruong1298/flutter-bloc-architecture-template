import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class BaseScreenState<T extends StatefulWidget> extends State<T>
    with AutomaticKeepAliveClientMixin<T> {

  GoRouter get router => GoRouter.of(context);

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: builder(context),
    );
  }

  Widget builder(BuildContext context);

  @override
  bool get wantKeepAlive => false;

  bool get willPop => true;

  ///   Override this function to handle will pop scope in case
  ///   you need to custom it
  bool onPhysicalBackPress() {
    return willPop;
  }

  Future<bool> onWillPop() {
    return Future.value(onPhysicalBackPress());
  }

  void toggleAppDialog(bool isShow, {required dynamic dialogBuilder}) {}

  void toggleLoading(bool value, {bool showSpinner = false}) {}

  void showErrorDialog(Object error) {}

  void hideKeyBoard(BuildContext context) {
    if (FocusScope.of(context).hasFocus) {
      FocusScope.of(context).unfocus();
    }
  }
}


