class OnBoard {
  String image;
  String title;
  String description;

  OnBoard({
    required this.image,
    required this.title,
    required this.description,
  });
}

var onBoardList = [
  OnBoard(
    image: 'images/image-onboard-1.png',
    title: 'Plan Your Trip in Hanoi',
    description: 'Explore the city of Hanoi and plan your trip in Hanoi',
  ),
  OnBoard(
    image: 'images/image-onboard-2.png',
    title: 'Begin The Adventure in Hanoi',
    description: 'Save the date and begin the adventure in Hanoi',
  ),
  OnBoard(
    image: 'images/image-onboard-3.png',
    title: 'Enjoy Your Trip in Hanoi',
    description: 'Save and enjoy suggested guide tours in Hanoi',
  ),
];
