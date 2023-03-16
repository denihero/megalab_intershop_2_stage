class OurWorksEntity {
  final List<ContentEntity>? content;
  final int? totalElements;
  final int? totalPages;
  final int? size;
  final int? number;
  final int? numberOfElements;

  OurWorksEntity(
      {this.content,
      this.number,
      this.numberOfElements,
      this.size,
      this.totalElements,
      this.totalPages});
}

class ContentEntity {
  final int? id;
  final String? image;
  final String? title;

  ContentEntity({this.id,this.title,this.image});
}
