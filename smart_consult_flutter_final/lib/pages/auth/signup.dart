
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../app_routes.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final email = TextEditingController();
  final password = TextEditingController();

  Future<void> signup() async {
    try {
      final res = await Supabase.instance.client.auth.signUp(
        email: email.text,
        password: password.text,
      );
      if (res.user != null) Navigator.pushReplacementNamed(context, AppRoutes.home);
    } catch (_) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Criar conta")),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(controller: email, decoration: const InputDecoration(labelText: "Email")),
            const SizedBox(height: 12),
            TextField(controller: password, obscureText: true, decoration: const InputDecoration(labelText: "Senha")),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: signup, child: const Text("Registrar"))
          ],
        ),
      ),
    );
  }
}
