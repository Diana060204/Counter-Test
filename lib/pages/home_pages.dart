import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int cont = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Diana Margarita Hernandez Arteaga"),
        backgroundColor: Color.fromARGB(255, 52, 191, 230),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Numero de click"),
          Text("$cont"),
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            // ignore: sort_child_properties_last
            child: const Icon(Icons.add),
            onPressed: () => _sumar(),
            backgroundColor: Color.fromARGB(255, 176, 113, 236),
          ),
          const SizedBox(
            width: 8,
          ),
          FloatingActionButton(
            // ignore: sort_child_properties_last
            child: const Icon(Icons.remove),
            onPressed: () => _restar(),
            backgroundColor: Color.fromARGB(255, 212, 119, 213),
          ),
          const SizedBox(
            width: 8,
          ),
          FloatingActionButton(
            // ignore: sort_child_properties_last
            child: const Icon(Icons.exposure_zero),
            onPressed: () => _restaurar(),
            backgroundColor: Color.fromARGB(255, 106, 76, 189),
          )
        ],
      ),
    );
  }

  void _sumar() {
    setState(() {
      cont++;
    });
  }

  void _restar() {
    setState(() {
      if (cont > 0) {
        cont--;
      }
    });
  }

  void _restaurar() {
    setState(() {
      cont = 0;
    });
  }
}
