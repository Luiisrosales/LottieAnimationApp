import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  List<String> title = ['Ubicación', 'Ordena', 'Confirma', 'Pago', 'Monitorea'];
  List<String> desc = [
    'Selecciona tu Ubicación de destino',
    'Selecciona lo que tienes ganas de comer hoy',
    'verifica lo seleccionado y confirma tu Pedido',
    'Utiliza el metodo de pago conveniente para ti y haz el Pago',
    'Espera mientras monitoreas tu pedido'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('animations/${index + 1}.json',
                    height: 300,
                    reverse: true,
                    repeat: true,
                    fit: BoxFit.cover),
                SizedBox(
                  height: 20,
                ),
                Text(
                  title[index],
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    desc[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic),
                  ),
                )
              ],
            );
          }),
    );
  }

  Widget content() {
    return Container();
  }
}
