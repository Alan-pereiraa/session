import 'package:flutter/material.dart';
import 'package:session_project/models/session.dart';

class SessionProvider extends ChangeNotifier {
  Session? _session;

  Session? get session => _session;

  void setSession(Session session) {
    _session = session;
    notifyListeners();
  }

  void clearSession() {
    _session = null;
    notifyListeners();
  }
}