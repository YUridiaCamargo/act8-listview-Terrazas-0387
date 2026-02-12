import 'package:flutter/material.dart';

void main() => runApp(AppPasteleria());

class AppPasteleria extends StatelessWidget {
  const AppPasteleria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "pasteleria",
      home: pasteles(),
    );
  }
} //fin clase appPasteleria

class pasteles extends StatelessWidget {
  const pasteles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pastelería Red Velvet Cake',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        // Fondo morado oscuro para el AppBar
        backgroundColor: const Color.fromARGB(255, 145, 3, 3),
        leading: const Icon(
          Icons.star, // Icono de estrella solicitado
          color: Color.fromARGB(255, 250, 250, 250),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.cake,
              color: Color.fromARGB(255, 255, 253, 253),
            ), // Icono de pastel
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.favorite,
              color: Color.fromARGB(255, 255, 253, 253),
            ), // Icono de corazón
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Elemento 1: Pasteles
          _crearTarjetaPostre(
            titulo: 'Pastel de Red Velvet',
            descripcion: 'Suave bizcocho con crema de queso.',
            precio: '\$25.00',
            icono: Icons.cake,
            colorFondo: Colors.pink[50]!,
            colorIcono: Colors.redAccent,
          ),

          // Elemento 2: Cupcakes
          _crearTarjetaPostre(
            titulo: 'Cupcake de Vainilla',
            descripcion: 'Con frosting de colores y chispas.',
            precio: '\$3.50',
            icono: Icons.cake_outlined,
            colorFondo: Colors.purple[50]!,
            colorIcono: Colors.purpleAccent,
          ),

          // Elemento 3: Galletas
          _crearTarjetaPostre(
            titulo: 'Galletas de Chispas',
            descripcion: 'Recién horneadas y crujientes.',
            precio: '\$1.50',
            icono: Icons.cookie,
            colorFondo: Colors.orange[50]!,
            colorIcono: Colors.orangeAccent,
          ),

          // Elemento 4: Bebidas
          _crearTarjetaPostre(
            titulo: 'Café Capuchino',
            descripcion: 'El acompañante ideal para tu postre.',
            precio: '\$4.00',
            icono: Icons.coffee,
            colorFondo: Colors.brown[50]!,
            colorIcono: Colors.brown,
          ),
        ],
      ),
    );
  }

  // Método necesario para que el código funcione
  Widget _crearTarjetaPostre({
    required String titulo,
    required String descripcion,
    required String precio,
    required IconData icono,
    required Color colorFondo,
    required Color colorIcono,
  }) {
    return Card(
      color: colorFondo,
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        leading: Icon(icono, color: colorIcono, size: 40),
        title: Text(
          titulo,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(descripcion),
        trailing: Text(
          precio,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
