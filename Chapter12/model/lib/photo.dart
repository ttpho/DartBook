import 'package:equatable/equatable.dart';

class PhotoItem with EquatableMixin {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  PhotoItem({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });

  @override
  List<Object?> get props => [albumId, id, title, url, thumbnailUrl];
}

/*
import 'package:equatable/equatable.dart';

class PhotoItem extends Equatable {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  PhotoItem({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });

  @override
  List<Object?> get props => [albumId, id, title, url, thumbnailUrl];
}

class PhotoItem {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  PhotoItem({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PhotoItem &&
          runtimeType == other.runtimeType &&
          albumId == other.albumId &&
          id == other.id &&
          url == other.url &&
          thumbnailUrl == other.thumbnailUrl;

  @override
  int get hashCode => Object.hash(albumId, id, title, url, thumbnailUrl);
}

*/
