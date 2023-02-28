class Sights {
  final String? imgUrl;
  final String? name;
  final double? price;
  final double? hours;
  final double? rating;
  final String? heroTag;
  final String? description;

  Sights(
    this.imgUrl,
    this.name,
    this.price,
    this.hours,
    this.rating,
    this.heroTag,
    this.description,
  );

  final List<Sights> allData = [
    Sights(
      'assets/images/japan.jpg',
      'Niagara Falls',
      106,
      6,
      4.5,
      'niagara',
      "Located on the border between New York and Canada, Niagara Falls is a stunning natural wonder that draws millions of visitors each year. You can take a boat tour to see the falls up close, or enjoy the views from one of the many observation decks.",
    ),
    Sights(
      'assets/images/china.jpg',
      'Waduk Wonorejo',
      96,
      3,
      3.5,
      'waduk',
      "Waduk Wonorejo is a stunning vacation destination that offers breathtaking views of the surrounding mountains and lush greenery. With its tranquil waters and serene atmosphere, it's the perfect place to escape from the hustle and bustle of city life.",
    ),
    Sights(
      'assets/images/korea.jpg',
      'Niagara Falls',
      106,
      6,
      4.5,
      'niagara',
      "Aranthus Vale is a mystical city nestled in the heart of a lush valley, surrounded by towering mountains and winding rivers. It's home to ancient ruins and magical artifacts, making it a popular destination",
    ),
  ];
}
