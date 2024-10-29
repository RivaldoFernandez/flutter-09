import 'package:flutter/material.dart';
import 'package:laboratorio09/app/view/components/h1.dart';
import 'package:laboratorio09/app/view/components/shape.dart';
import 'package:laboratorio09/app/view/task_list/task_list_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Row(
            children: [
              Shape(), // Cambia shape() por Shape()
            ],
          ),
          const SizedBox(height: 79),
          Image.asset(
            'assets/img/onboarding-image.png',
            width: 180,
            height: 168,
          ),
          const SizedBox(height: 99),
          const H1(
              'Lista de tareas'), // Asegúrate de poner la coma al final de esta línea
          const SizedBox(height: 21),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TaskListPage(),
                  ),
                );
              },
              child: const Text(
                'La mejor forma para que no se te olvide nada es anotarlo. Guarda tus tareas y ve completando poco a poco para aumentar tu productividad',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
