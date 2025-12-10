
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'app_routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://jlffrqmbmsabsniysier.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpsZmZycW1ibXNhYnNuaXlzaWVyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjUzMjE4NzgsImV4cCI6MjA4MDg5Nzg3OH0.QWkv-ccEiC1qp_49DcdzbKuDCMtP4aiCbAOFnT8rAmA',
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.authGate,
      routes: AppRoutes.routes,
    );
  }
}
