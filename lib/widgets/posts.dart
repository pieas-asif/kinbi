import 'package:flutter/material.dart';
import 'package:kinbi/screens/post_view.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/avatar.jpg"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Jane Doe",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              IconButton(
                padding: EdgeInsets.zero,
                splashRadius: 10,
                iconSize: 24,
                icon: Icon(
                  Icons.menu,
                ),
                onPressed: () {
                  print("Menu");
                },
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          GestureDetector(
            child: Image(
              image: AssetImage("images/product.jpeg"),
              height: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            onTap: () {
              Navigator.pushNamed(context, PostViewPage.id);
            },
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Samsung Galaxy S7 Edge",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Icon(Icons.favorite_border),
                    onTap: null,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "£: 48.14",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "John Doe",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "Ends In: 2d 12h",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
