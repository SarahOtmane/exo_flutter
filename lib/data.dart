// data.dart

class Experience {
  final String imageName;
  final String companyName;
  final String role;
  final String duration;
  final String description;

  Experience({
    required this.imageName,
    required this.companyName,
    required this.role,
    required this.duration,
    required this.description,
  });
}

class Formation {
  final String imageName;
  final String companyName;
  final String description;

  Formation({
    required this.imageName,
    required this.companyName,
    required this.description,
  });
}

List<Experience> experiences = [
  Experience(
    imageName: 'assets/ca.png',
    companyName: 'Crédit Agricole',
    role: 'Développeuse Python',
    duration: '(09/2024-)',
    description: 'Développeuse pyhton dans l automatisation des tests',
  ),
  Experience(
    imageName: 'assets/vegetal.png',
    companyName: 'Le végétal',
    role: 'Développeuse FullStack',
    duration: '(02/2024 - 06/2024)',
    description: 'Développer un site de réservation en ligne',
  ),
  Experience(
    imageName: 'assets/cavousplay.png',
    companyName: 'CaVousPlay Productions',
    role: 'Développeuse Full-Stack',
    duration: '(2024)',
    description: 'Site vitrine pour la boite d\'audio visuelle',
  ),
  Experience(
    imageName: 'assets/vegetal.png',
    companyName: 'Elephant Rose',
    role: 'Deveeloppeuse FullStack',
    duration: '(2023 - 2024)',
    description: 'Alternance développeuse fullstack',
  ),
];


List<Formation> formations = [
  Formation(
    imageName: 'assets/ca.png',
    companyName: 'MyDigitalSchool',
    description: 'Bachelor 3 développeur web',
  ),
  Formation(
    imageName: 'assets/vegetal.png',
    companyName: 'Ecole Multimédia',
    description: 'Bachelor 2 développeur web',
  ),
  Formation(
    imageName: 'assets/cavousplay.png',
    companyName: 'ESTIN',
    description: 'Classe préparatoire école d\'ingénieur math info',
  ),
];
