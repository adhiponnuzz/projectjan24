import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhoneListDemo extends StatelessWidget {
  var phones = <String>['iPhone 12', 'iPhone 13 pro', 'iPhone 13', 'iPhone 11'];
  var phoneimg = <String>[
    "https://images.unsplash.com/photo-1607936854279-55e8a4c64888?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aXBob25lJTIwMTJ8ZW58MHx8MHx8&w=1000&q=80",
    "https://www.91-img.com/gallery_images_uploads/2/7/2736acf8e6adc92cf6970c457d2112c6a7a65767.JPG?tr=h-550,w-0,c-at_max",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgIMTiU5NcWvTvlbENFRhKMwkDOJvMJPvqdEaNcy4C&s",
    "https://www.91-img.com/gallery_images_uploads/1/5/1583da45d41ce8e6eaa090f0333f782bc5a6e2fd.jpg?tr=h-550,w-0,c-at_max",
  ];
  var price = <String>['999','1199','1299','899'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("This ListView builder")),
      body: ListView.builder(
        itemCount: phones.length,
          itemBuilder: (BuildContext,index) {
            return Card(
              color: Colors.purpleAccent,
              child: ListTile(
                leading: SizedBox(
                  height: 200,
                  width: 100,
                  child: Image(image: NetworkImage(phoneimg[index]),),
                ),
                title: Text(phones[index],textAlign: TextAlign.center,),
                subtitle: Text("Face ID ,accelerometer",textAlign: TextAlign.center,),
                trailing: Text("\$${price[index]}"),
              ),




            );
          }
  ),
  );

}}
