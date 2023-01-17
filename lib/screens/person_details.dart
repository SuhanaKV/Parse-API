import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PersonDetails extends StatefulWidget{
  String? image;
  String? des;
  String? profile;
  String? name;

  PersonDetails(this.image,this.des,this.profile,this.name);
  @override
  State<PersonDetails> createState() => _PersonDetailsState();
}

class _PersonDetailsState extends State<PersonDetails>{

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Person Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children:[

          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Image.network(widget.image !=null ? widget.image! 
            :'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.quotev.com%2Fstory%2F7244632%2FError-Loading-Refresh-page-If-doesnt-load-dont-read-this-story-&psig=AOvVaw1yXbHuVk87kv_NCT0rXCac&ust=1673943697012000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCPDimKKJzfwCFQAAAAAdAAAAABAE',
            fit: BoxFit.fitWidth,),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(widget.des !=null ? widget.des! : 'No data'),
          ),
          Row(
            children: [
            Image.network(widget.profile!=null? widget.profile! : 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vecteezy.com%2Ffree-vector%2Fprofile-icon&psig=AOvVaw0RRIYcbudN8zpLgiA803Kp&ust=1673956411138000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCKDo0dC4zfwCFQAAAAAdAAAAABAE' ),
            Padding(padding: EdgeInsets.all(20)),
            Text(widget.name!=null? widget.name! : 'No data'),
          ],)
        ],
        ),
      ),
    );
  }

}





/*class PersonDetails extends StatelessWidget{
  String? image;
  String? des;
  String? profile;
  String? name;

  PersonDetails(this.image,this.des,this.profile,this.name);
  

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Person Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children:[

          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Image.network(image !=null ? image! 
            :'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.quotev.com%2Fstory%2F7244632%2FError-Loading-Refresh-page-If-doesnt-load-dont-read-this-story-&psig=AOvVaw1yXbHuVk87kv_NCT0rXCac&ust=1673943697012000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCPDimKKJzfwCFQAAAAAdAAAAABAE',
            fit: BoxFit.fitWidth,),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(des !=null ? des! : 'No data'),
          ),
          Row(
            children: [
            Image.network(profile!=null? profile! : 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vecteezy.com%2Ffree-vector%2Fprofile-icon&psig=AOvVaw0RRIYcbudN8zpLgiA803Kp&ust=1673956411138000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCKDo0dC4zfwCFQAAAAAdAAAAABAE' ),
            Padding(padding: EdgeInsets.all(20)),
            Text(name!=null? name! : 'No data'),
          ],)
        ],
        ),
      ),
    );
  }
}*/