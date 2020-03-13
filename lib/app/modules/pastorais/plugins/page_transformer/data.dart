class IntroItem {
  IntroItem({
    this.title,
    this.category,
    this.imageUrl,
  });

  final String title;
  final String category;
  final String imageUrl;
}

final sampleItems = <IntroItem>[
  new IntroItem(title: 'Servos do Senhor usando seu dom para glorificar a Santa Missa', category: 'PASTORAL DA MÚSICA', imageUrl: 'assets/images/ex7.jpg',),
  new IntroItem(title: 'Servos que zelam por todo o ritual da Santa Missa', category: 'PASTORAL DA LITURGIA', imageUrl: 'assets/images/ex8.jpg',),
  new IntroItem(title: 'Servos que dedicam seu tempo a contribuir para que o serviço da Igreja permaneça sendo possível', category: 'PASTORAL DO DÍZIMO', imageUrl: 'assets/images/ex9.jpg',),
];