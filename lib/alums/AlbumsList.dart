import 'package:flutter/material.dart';
import 'package:simpleshoppingflutter/alums/AlbumEntity.dart';
import 'package:simpleshoppingflutter/alums/AlbumsModel.dart';
import 'package:simpleshoppingflutter/networks/BaseModel.dart';
import 'package:simpleshoppingflutter/networks/Entity.dart';

class AlbumsList extends StatefulWidget {
  @override
  _AlbumsListState createState() => _AlbumsListState();
}

class _AlbumsListState extends State<AlbumsList> {
  AlbumsModel model = AlbumsModel();
  Future<Entity> albums;

  @override
  void initState() {
    super.initState();
    model.setMethod(HTTP_METHOD.GET);
    model.addAPath('1');
    albums = model.request();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Albums'),
      ),
      body: Center(
        child: FutureBuilder<Entity>(
          future: albums,
          builder: (context, snap) {
            if (snap.hasData) {
              AlbumEntity album = snap.data;
              int id = album.id;
              String title = album.title;
              return Column(
                children: [Text('id: $id'), Text('title: $title')],
              );
            } else if (snap.hasError) {
              return Text("${snap.error}");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
