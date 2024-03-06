import 'package:flutter/material.dart';
import 'tabs/tab-widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página de Inicio'),
        // Puedes agregar acciones a la barra de aplicaciones aquí
      ),
      body: getTabBarView([
        const TabWidget('Inicio'),
        const TabWidget('Frecuencia Cardíaca'),
        const TabWidget('Saturación de Oxígeno'),
        const TabWidget('Historial'),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.red,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Frecuencia Cardiaca',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.scatter_plot),
            label: 'Saturación de Oxígeno',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Historial',
          ),
        ],
      ),
    );
  }

  TabBarView getTabBarView(List<Widget> tabs) {
    return TabBarView(
      controller: _controller,
      children: tabs,
    );
  }
}
