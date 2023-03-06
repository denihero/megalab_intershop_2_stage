import 'package:megacom_second_stage/features/our_works/domain/entity/our_works_entity.dart';

class OurNewsEntity{
  final List<ContentEntity>? content;
  final int? totalElements;
  final int? totalPages;
  final int? size;
  final int? number;
  final int? numberOfElements;

  OurNewsEntity(
      {this.content,
        this.number,
        this.numberOfElements,
        this.size,
        this.totalElements,
        this.totalPages});
}