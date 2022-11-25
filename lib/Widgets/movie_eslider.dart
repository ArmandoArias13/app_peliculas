import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'populares',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (_, __) => _MoviePoster()),
          )
        ],
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 190,
      width: 130,
      child: Column(children: [
        GestureDetector(
          //para ver las acciones en las pantallas
          onTap: () => Navigator.pushNamed(context, 'details',
              arguments: 'movi-instans'),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage("https://via.placeholder.com/350x400"),
              width: 130,
              height: 160,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10), // salto de linea
        Text(
          'Star Wars: El nuevo jedi del nuevo mundo de la tierra criptonita',
          maxLines: 2,
          overflow: TextOverflow.ellipsis, // para poner mas texto
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
