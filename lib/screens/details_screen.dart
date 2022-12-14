import 'package:apppelicula/Widgets/casting_card.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                _PosterAndTitle(),
                _Overview(),
                _Overview(),
                _Overview(),
                _Overview(),
                _Overview(),
                _Overview(),
                CastingCard(),
              ],
            ),
          )
        ],
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
            padding: EdgeInsets.only(bottom: 10),
            color: Colors.black12,
            child: const Text(
              "texto de la pelicula",
              style: TextStyle(fontSize: 26, color: Colors.yellowAccent),
            ),
          ),
          background: const FadeInImage(
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

class _PosterAndTitle extends StatelessWidget {
  const _PosterAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: AssetImage('assets/no-image.jpg'),
                height: 150,
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('movie.title',
                    style: Theme.of(context).textTheme.headline5,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2),
                Text('movie.Originalstitle',
                    style: Theme.of(context).textTheme.headline5,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2),
                Row(
                  children: [
                    Icon(
                      Icons.star_outline,
                      size: 15,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'movie.voteAverage',
                      style: textTheme.caption,
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}

class _Overview extends StatelessWidget {
  const _Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
          style: Theme.of(context).textTheme.subtitle1,
          textAlign: TextAlign.justify,
          'Sint aliqua aliquip officia id velit quis cillum adipisicing consequat esse fugiat adipisicing. Velit cillum ex dolor velit mollit ipsum. Tempor esse dolor irure reprehenderit incididunt velit velit voluptate culpa amet qui adipisicing occaecat. Id minim incididunt commodo ut fugiat culpa.'),
    );
  }
}
