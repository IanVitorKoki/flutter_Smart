
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      const Center(child: Text("Home")),
      const Center(child: Text("Consultas")),
      const Center(child: Text("Médicos")),
      const Center(child: Text("Perfil")),
      const Center(child: Text("Configurações")),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Smart Consult"),
        actions: [
          IconButton(
            onPressed: () async {
              await Supabase.instance.client.auth.signOut();
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) => setState(() => index = i),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Início"),
          BottomNavigationBarItem(icon: Icon(Icons.event_note), label: "Consultas"),
          BottomNavigationBarItem(icon: Icon(Icons.local_hospital), label: "Médicos"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Config"),
        ],
      ),
    );
  }
}
