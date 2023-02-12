import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: productcustom(),
        );
      }));
}

class productcustom extends StatelessWidget {
  var images = <String>[
    "https://images.unsplash.com/photo-1601004890684-d8cbf643f5f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=1400&q=60",
    "https://images.unsplash.com/photo-1550258987-190a2d41a8ba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&auto=format&fit=crop&w=1400&q=60",
    "https://media.istockphoto.com/id/494037428/photo/orange-fruit-isolated-on-a-white-background.jpg?s=612x612&w=is&k=20&c=_EBdsEzl8HprKznzrbZ82DLg7ewq8QLvP6UDi7AXE0I=",
    "https://images.unsplash.com/photo-1619546813926-a78fa6372cd2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZnJ1aXRzJTIwaW1hZ2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1400&q=60",
    "https://images.unsplash.com/photo-1585059895524-72359e06133a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
    "https://media.istockphoto.com/id/937363912/photo/whole-and-slices-watermelon-isolated-on-white-background.jpg?b=1&s=170667a&w=0&k=20&c=Bc5dFjfpmW7YEAuUUYx7UXak43xm5d1h21ZmmsBFQnE=",
    "https://media.istockphoto.com/id/1295773461/photo/purple-grape-isolated-on-white-background-clipping-path-full-depth-of-field.jpg?s=612x612&w=is&k=20&c=z5pXZ4QRNvJJUUuL6Y3DvLuG6yzAl2nKr4bYr-5tocE="
  ];

  var names = <String>[

    "strawberry",
    "PineApple",
    "Orange",
    "Grapes",
    "Apple",
    "Kiwi",
  ];
  var unit = <String>["Kg", "Doz", "Doz", "Kg", "Kg", "Pc", "Doz"];
  var price = <String>["20", "30", "10", "25", "40", '15', "8"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product List"),
          actions: const [Icon(Icons.shopping_cart),],
          leading: Icon(Icons.menu),

        ),
        body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((
        context, index)
    {
      return Card(
        color: Colors.grey[800],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image(image: NetworkImage(images[index]),
              width: 100, height: 100,),


                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(

                            text: "unit:",
                            style: const TextStyle(
                                color: Colors.lime
                            ),
                            children: [
                              TextSpan(text: names[index],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)
                              )
                            ]
                        )),
                    RichText(text: TextSpan(
                      text: "Price:",
                      style: const TextStyle(color: Colors.lime),
                    children: [
                      TextSpan(text: price[index],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold)
                      )
                    ]
                    )),
                  ],
                ),


            ElevatedButton(onPressed: (){}, child: const Text("Add to cart"))
          ],
        ),
      );
    })),

  );




}}