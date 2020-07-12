import 'package:simpleshoppingflutter/networks/Entity.dart';

class AlbumEntity extends Entity {
  int id;
  String title;


  @override
  void parseJson(Map<String, dynamic> json){
    this.id = json['id'];
    this.title = json['title'];
  }

}
