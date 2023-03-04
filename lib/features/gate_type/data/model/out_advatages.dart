class OurAdvantagesModel {
  final String title;
  final String description;

  OurAdvantagesModel({required this.title, required this.description});

  static final List<OurAdvantagesModel> advantageList = [
    OurAdvantagesModel(
        title: 'ПРОМЫШЛЕННЫЙ\nМАСШТАБ',
        description:
            '''Данная    серия    ворот     спроектирована специально для перекрытия больших проёмов на промышленных объектах.'''),
    OurAdvantagesModel(
        title: 'ВЫСОКИЙ УРОВЕНЬ\nТЕРМОИЗОЛЯЦИИ',
        description:
            'Промышленные ворота ISD01 применяются для термоизоляции помещений с высокой интенсивностью использования.'),
    OurAdvantagesModel(
        title: 'ОПТИМАЛЬНОЕ\nРЕШЕНИЕ',
        description:
            'Благодаря высоким эксплуатационным качествам ворота DoorHan являются оптимальным решением для любых объектов.'),
    OurAdvantagesModel(
        title: 'ЭЛЕГАНТНЫЙ\nВНЕШНИЙ ВИД',
        description:
            'Несмотря на то, что серия предназначена для промышленного применения, она обладает широким выбором дазайна.'),
    OurAdvantagesModel(
        title: 'БЕЗОПАСНОСТЬ',
        description:
            'Многоуровневая система безопасности включает: устройства защиты от обрыва пружины и от разрыва троса, которые защищают полотно от непреднамеренного падения.'),
    OurAdvantagesModel(
        title: 'НАДЁЖНОСТЬ',
        description:
            'Использование усиленных комплектующих обеспечивает повышенную надёжность конструкции в процессе эксплуатации.'),
  ];
}
