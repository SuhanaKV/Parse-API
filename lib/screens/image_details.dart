import 'package:flutter/material.dart';

class ImageDetails extends StatefulWidget{
  String? image, des;
  ImageDetails(this.image,this.des);
  @override
  State<ImageDetails> createState() => _ImageDetailsState();
}

class _ImageDetailsState extends State<ImageDetails>{

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Image.network(widget.image ?? 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fhelp.nextcloud.com%2Ft%2Ferror-loading-jpg-and-jpeg-files%2F98628&psig=AOvVaw1eVOuV91Sh97i8dRBjPRA2&ust=1673957615468000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCOChxo69zfwCFQAAAAAdAAAAABAz'),
            ),
            Text(widget.des != null ? widget.des! : "No data",
            style: TextStyle(
                      fontSize: 25,
                    ),),
          ],
        ),
      ) ,
    );
  }
}


/*class ImageDetails extends StatelessWidget{
  String? image, des;
  ImageDetails(this.image,this.des);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Image.network(image ?? 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fhelp.nextcloud.com%2Ft%2Ferror-loading-jpg-and-jpeg-files%2F98628&psig=AOvVaw1eVOuV91Sh97i8dRBjPRA2&ust=1673957615468000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCOChxo69zfwCFQAAAAAdAAAAABAz'),
            ),
            Text(des != null ? des! : "No data",
            style: TextStyle(
                      fontSize: 25,
                    ),),
          ],
        ),
      ) ,
    );
  }
}*/