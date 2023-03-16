import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:megacom_second_stage/features/our_works/domain/entity/our_works_entity.dart';

class OurNewsEntity {
  final List<ContentEntity>? content;
  final int? totalElements;
  final int? totalPages;
  final int? size;
  final int? number;
  final int? numberOfElements;

  OurNewsEntity({
    this.content,
    this.number,
    this.numberOfElements,
    this.size,
    this.totalElements,
    this.totalPages,
  });
}

class DetailNewsEntity {
  final int? id;
  final String? title;
  final String? coverImage;
  final String? text;
  final String? contentImage;

  DetailNewsEntity({
    this.id,
    this.title,
    this.coverImage,
    this.text,
    this.contentImage,
  });
}
