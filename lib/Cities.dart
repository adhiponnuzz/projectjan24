import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CitiesDemo extends StatelessWidget {
  var city = <String>['Delhi', 'London', 'Vancouver', 'New York'];
  var images = <String>[
    "https://media.istockphoto.com/id/1385708082/photo/big-ben-and-thames-river-in-london-uk.jpg?s=1024x1024&w=is&k=20&c=GOjbJ9Q6jIublXwMOAeiiN_Gp6Q9dcr5_sQY9kH2EUM=",
    "https://media.istockphoto.com/id/517364023/photo/lotus-temple.jpg?s=1024x1024&w=is&k=20&c=QL6NNOFl8e5BzD8AIqxYQTuE8NrdOm6jJUHZN13uiuY=",
    "https://media.istockphoto.com/id/525109801/photo/beautiful-view-of-vancouver-british-columbia-canada.jpg?s=612x612&w=0&k=20&c=_8UXnMFxx1ap2V4YlMH6woTkHPsZkotbSug1CbW7724=",
    "https://media.gettyimages.com/id/1269226133/photo/concept-of-new-york-city-statue-of-liberty-downtown.jpg?s=612x612&w=gi&k=20&c=j490kQvLK__AlFHjeip2eyt9X954Nda82kn1yIs3vkk="
  ];
  var datas = <String>['India','London','Varcouver','New York'];
  var popdata = <String>['population:19 mill','population:8 mill','poppulation:2.4','poppulation:8.1'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text("Cities Around World"),),
      body: ListView.builder(
        itemCount: city.length,
          itemBuilder: (BuildContext,index) {
            return Card(
              color: Colors.white,
              child: ListTile(
                isThreeLine: true,
                leading: SizedBox(
                      width: 100,
                      height: 100,
                      child: Image(image: NetworkImage(images[index]),fit: BoxFit.fill,
                      ),
                    ),


                title: Text(city[index],textAlign: TextAlign.center,),
                subtitle: Text("${datas[index]}\n ${popdata[index]}",textAlign: TextAlign.center,),
              ),

            );


          }),
    );
  }
}
