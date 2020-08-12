import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:practicas/src/models/movies.model.dart';

// ignore: must_be_immutable
class CardWidget extends StatelessWidget {
  final List<Movie> peliculas;
  double width;
  double height;
  CardWidget(
      {@required this.peliculas, @required this.width, @required this.height});
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
        padding: EdgeInsets.only(top: 10.0),
        child: Swiper(
          layout: SwiperLayout.STACK,
          itemWidth: _screenSize.width * this.width,
          itemHeight: _screenSize.height * this.height,
          itemBuilder: (BuildContext context, int index) {
            return ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: FadeInImage(
                  placeholder: AssetImage('assets/img/loading.png'),
                  image: NetworkImage(peliculas[index].getPosterImg()),
                  fit: BoxFit.cover,
                ));
          },
          itemCount: peliculas.length,
          viewportFraction: 0.8,
          scale: 0.9,
        ));
  }
}
