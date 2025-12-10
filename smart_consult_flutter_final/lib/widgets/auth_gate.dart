
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../pages/auth/login.dart';
import '../pages/home/home.dart';

class AuthGate extends StatefulWidget {
  const AuthGate({super.key});
  @override
  State<AuthGate> createState() => _AuthGateState();
}

class _AuthGateState extends State<AuthGate> {
  Session? session;

  @override
  void initState() {
    super.initState();
    session = Supabase.instance.client.auth.currentSession;
    Supabase.instance.client.auth.onAuthStateChange.listen((event) {
      setState(() {
        session = event.session;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (session == null) return const LoginPage();
    return const HomePage();
  }
}
