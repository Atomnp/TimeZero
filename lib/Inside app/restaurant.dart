import 'package:flutter/material.dart';
import 'components.dart';

class RestaurantPage extends StatelessWidget {
  final String nameOfRestaurant;
  final String ratingOfRestaurant;
  final String distanceOfRestaurant;
  final String image;


  RestaurantPage({this.nameOfRestaurant,this.ratingOfRestaurant,this.distanceOfRestaurant,this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height / 1.9,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      RoundButton(icon: Icons.arrow_back_ios, onTap: (){Navigator.pop(context);},),
                      Spacer(),
                      RoundButton(icon: Icons.favorite_border),
                      SizedBox(width: 5.0),
                      RoundButton(icon: Icons.ac_unit),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 51),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(21),
                    ),
                    child: Text(
                      "\$125",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.all(25),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.pin_drop,
                          color: Colors.grey[400],
                        ),
                        Text(
                          distanceOfRestaurant+"km",
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      nameOfRestaurant,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.orange),
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Text(
                          ratingOfRestaurant,
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        DisplayRating(
                          rating: 5,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage:
                          AssetImage('images/profile.jpg'),
                        ),
                        SizedBox(width: 11),
                        Text(
                          "Amazigh",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 21),
                        Text(
                          "22:30",
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                        Spacer(),
                        Icon(
                          Icons.favorite,
                          color: Colors.pink,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "59",
                          style: TextStyle(color: Colors.pink),
                        ),
                        SizedBox(width: 11),
                        Icon(
                          Icons.comment,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "129",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Container(
                      margin:
                      EdgeInsets.symmetric(vertical: 11, horizontal: 21),
                      padding: EdgeInsets.all(15),
                      color: Color(0xfff7f8fc),
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            child: ClipRRect(
                              child: Image.asset('Momo.jpg'),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            child: ClipRRect(
                              child: Image.asset('mango.jpg'),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            child: ClipRRect(
                              child: Image.asset('apple.jpg'),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              colors: [Colors.yellow, Colors.orange],
                            ),
                            boxShadow: [
                              BoxShadow(blurRadius: 5.0, color: Colors.orange)
                            ]),
                        child: Row(
                          children: <Widget>[
                            Spacer(),
                            Text(
                              "Call this restaurant",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold, fontSize: 21),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
