class OurServiceEntity {
  final int? id;
  final String? name;
  final String? image;
  final String? description;
  final List<AdvantageEntity>? advantages;

  OurServiceEntity(
      {this.id, this.name, this.image, this.description, this.advantages});
}

class AdvantageEntity {
  final int? id;
  final String? title;
  final String? text;

  AdvantageEntity({this.id, this.title, this.text});
}
