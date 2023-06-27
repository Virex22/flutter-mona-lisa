import 'package:flutter/material.dart';
import 'package:monalisa/utils/artwork_helper.dart';

class Artwork extends StatefulWidget {
  const Artwork({Key? key}) : super(key: key);

  @override
  ArtworkState createState() => ArtworkState();
}

class ArtworkState extends State<Artwork> {
  bool _isFavorite = false;
  bool _showDescription = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Museum'),
      ),
      body: Center(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'images/Mona_Lisa.jpg',
                    width: 300,
                    height: 300,
                  ),
                  // place icon on top right corner of image
                  Positioned(
                    top: 0,
                    right: 50,
                    child: Icon(
                      Icons.favorite,
                      color: _isFavorite
                          ? Colors.red
                          : Colors.white.withOpacity(0.75),
                      size: 30,
                    ),
                  ),
                ],
              ),
              const Text(
                'Mona Lisa',
                style: TextStyle(
                  fontFamily: 'Merriweather',
                  fontSize: 30,
                  color: Colors.brown,
                ),
              ),
              const Text(
                'Léonard De Vinci',
                style: TextStyle(
                  fontFamily: 'Merriweather',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: const Icon(Icons.article),
                    onPressed: () {
                      setState(() {
                        _showDescription = !_showDescription;
                      });
                    },
                  ),
                  IconButton(
                      icon: _isFavorite
                          ? const Icon(Icons.favorite)
                          : const Icon(Icons.favorite_border),
                      onPressed: () {
                        setState(() {
                          _isFavorite = !_isFavorite;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(_isFavorite
                                  ? 'Oeuvre ajoutée à vos favoris'
                                  : 'Oeuvre retirée de vos favoris'),
                              duration: const Duration(seconds: 1),
                            ),
                          );
                        });
                      }),
                ],
              ),
            ],
          ),
          getDescriptionContainer(show: _showDescription),
        ],
      )),
    );
  }
}
