import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';

    return Scaffold(
      body: CustomScrollView(
        slivers: [_CustomAppBar()],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        backgroundColor: Colors.blue,
        expandedHeight: 200,
        floating: false,
        pinned: true, // Para que se quede hasta arriba pero se uede en pantalla
        flexibleSpace: FlexibleSpaceBar(
          titlePadding: EdgeInsets.all(0),
          centerTitle: true,
          title: Container(
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            color: Colors.black12,
            child: Text(
              "texto de la pelicula",
              style: TextStyle(fontSize: 26, color: Colors.yellowAccent),
            ),
          ),
          background: FadeInImage(
            //para agregar una imagen
            placeholder: AssetImage(
                "assets/loading.gif"), //para poner una imagen si no carga la original     //El NetWorkimage es para bajar una imagen de internet
            image: AssetImage(
                "assets/loading.gif"), //para poner la imagen a esperar
            fit: BoxFit.cover, //para ponerla todo el contorno
          ),
        ));
  }
}
