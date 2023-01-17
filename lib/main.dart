import 'package:flutter/material.dart';
import 'package:parseapi/controller/api_controller.dart';
import 'package:parseapi/screens/image_details.dart';
import 'package:parseapi/screens/person_details.dart';

import 'model/model.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Parse API"),
      ),
      
      body: FutureBuilder<List<Model?>?>(
        future: ApiController().getUsers(),
        builder: (context,snapshot){
          var data=snapshot.data;
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: data?.length,
              itemBuilder: (context,index){
                var UsersData=data![index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children:[

                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ImageDetails(UsersData.urls?.full, UsersData.description)));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Image.network(UsersData!.urls!.regular!
                        ),
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(UsersData.description != null ? UsersData.description! : "No data",
                      style: TextStyle(
                        fontSize: 25,
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: InkWell(

                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PersonDetails(
                            UsersData.urls?.thumb,                         
                            UsersData.description,
                            UsersData.sponsorship?.sponsor?.profileImage?.small,
                            UsersData.sponsorship?.sponsor?.name,

                          )));
                        },

                        child: Row( 
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        Image.network(
                         UsersData.sponsorship?.sponsor?.profileImage?.medium ?? 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vecteezy.com%2Ffree-vector%2Fprofile-icon&psig=AOvVaw0RRIYcbudN8zpLgiA803Kp&ust=1673956411138000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCKDo0dC4zfwCFQAAAAAdAAAAABAE'),
                        
                        Text(
                        UsersData.sponsorship?.sponsor?.name ?? 'No data'
                        ),
                      ],),
                      ),
                    ),
                    
                    
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                      UsersData.user?.location ?? 'no data',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                      UsersData.user?.bio ?? 'no data',
                      style: TextStyle(
                      fontSize: 20,
                    ),
                      ),
                    ),

                  ],
                  ),
                );
                
                
              });
          }else{
            return Center(child: const CircularProgressIndicator());
          }
        }),



    );
  }
}







  