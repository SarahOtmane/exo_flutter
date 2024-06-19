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

List<Experience> experiences = [
  Experience(
    imageName: 'assets/ca.svg',
    companyName: 'Crédit Agricole',
    role: 'Développeuse Python',
    duration: '(09/2024-)',
    description: 'Développeuse pyhton dans l automatisation des tests',
  ),
  Experience(
    imageName: 'assets/vegetal.jpeg',
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
    imageName: 'assets/images/adidas.png',
    companyName: 'Elephant Rose',
    role: 'Deveeloppeuse FullStack',
    duration: '(2023 - 2024)',
    description: 'Alternance développeuse fullstack',
  ),
];
