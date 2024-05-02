import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  const Review({
    Key? key,
    required this.pathImage,
    required this.name,
    required this.information,
    required this.comment,
  }) : super(key: key);

  final String pathImage;
  final String name;
  final String information;
  final String comment;

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
      ),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(pathImage),
        ),
      ),
    );

    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: 'Lato',
          fontSize: 15,
          color: Color(0xff58595B),
        ),
      ),
    );

    final userInformation = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            information,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontFamily: 'Lato',
              fontWeight: FontWeight.bold,
              fontSize: 11,
              color: Color(0xff939598),
            ),
          ),
        ),
        const SizedBox(width: 5.0),
        const Row(
          children: <Widget>[
            //
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            //Icino media estrella
            Icon(Icons.star_half, color: Colors.yellow),
            //estrella vacia
            Icon(Icons.star_border, color: Colors.yellow),
          ],
        ),
      ],
    );

    final userComment = Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: 'Lato',
          fontSize: 11,
          // fontWeight: FontWeight.bold,
          color: Color(0xff231F20),
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInformation,
        userComment,
      ],
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails,
      ],
    );
  }
}