import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session_project/providers/session_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final userEmail = Provider.of<SessionProvider>(context).session?.email ?? "Usuário não logado";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: const Text("Página Inicial"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Bem-vindo à Página Inicial!",
              style: TextStyle(fontSize: 24),
            ),
            Text(userEmail),
            ElevatedButton(
              onPressed: () {
                Provider.of<SessionProvider>(context, listen: false).clearSession();
                Navigator.pushReplacementNamed(context, '/');
              },
              child: const Text("Sair"),
            ),
          ],
        ),
      ),
    );
  }
}