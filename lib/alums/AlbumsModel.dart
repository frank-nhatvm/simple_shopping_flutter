

import 'package:simpleshoppingflutter/alums/AlbumEntity.dart';
import 'package:simpleshoppingflutter/networks/BaseModel.dart';

class AlbumsModel extends BaseModel{


  @override
  void initBasePath() {
    basePath = 'albums';
  }

  @override
  void initEntity() {
    entity = AlbumEntity();
  }

}