import 'package:flutter/material.dart';

import 'background_locator.dart';

class AutoStopHandler extends WidgetsBindingObserver {
  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
        await BackgroundLocator.unRegisterLocationUpdate();

      case AppLifecycleState.resumed:
      case AppLifecycleState.hidden:
    }
  }
}
