import 'dart:async';

import 'package:flutter/cupertino.dart';

mixin UnSubscriber<T extends StatefulWidget> on State<T> {
  final List<StreamSubscription> _subscriptions = [];
  set addSubs(subs) {
    _subscriptions.add(subs);
  }

  cancel(){
    for (var sub in _subscriptions) {
      sub.cancel();
    }
  }

  @override
  @mustCallSuper
  void dispose() {
    cancel();
    super.dispose();
  }

}