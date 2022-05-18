import 'package:city_guide/model/location.dart';

class Event {
  String title;
  String subTitle;
  String category;
  String content;
  String photoCover;
  List<String> urlPhoto;
  Location location;
  String date;

  Event({
    required this.title,
    required this.subTitle,
    required this.category,
    required this.content,
    required this.photoCover,
    required this.urlPhoto,
    required this.location,
    required this.date,});
}

var eventList = [
  Event(
    title: 'Thang Long \nWater Puppet',
    subTitle: 'Theatre \n& Performances',
    category: 'Event',
    content: 'The art form of water puppetry originated at least 1,000 years ago in the rice fields of north Vietnam. Particularly if you’re traveling with kids, you’d be remiss to leave Hanoi without catching a show at the Thang Long Water Puppet Theatre. A Vietnamese orchestra accompanies the water puppets, with some modern special effects.',
    photoCover: 'images/cover-water-puppet.jpg',
    urlPhoto: ['https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/25/b2/3e/the-show-begin.jpg?w=1200&h=-1&s=1', 
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/54/04/e1/photo1jpg.jpg?w=1200&h=-1&s=1',
      'https://media.tacdn.com/media/attractions-splice-spp-674x446/07/6c/e9/a4.jpg',],
    location: Location(
      region: 'Hanoi',
      subRegion: 'Old Quarter',
      country: 'Vietnam',
      location: 'Thang Long Water Puppet Theatre',
      address: '57B Dinh Tien Hoang Street, Hanoi',
      latitude: -21.032051408667062, 
      longitude: 105.85315445551986,
    ),
    date: '2022-06-01',),
  Event(
    title: 'Authentic \nBat Trang',
    subTitle: 'Art Events',
    category: 'Event',
    content: 'Bat Trang is famous for a large range of high quality ceramic products like bowl, dish, pot, cup, wine pot, a big flower-vase, leg lamp, lime-pot, big-bellied jar, pictures... Join in this tour to explore their production process. Enjoy the rural Red River landscape on the way to Bat Trang pottery village. Explore the hancraft proccess of ceramic production. Go shopping for unique ceramic items to take home. Join in making ceramic things by yourself',
    photoCover: 'images/cover-pottery.jpg',
    urlPhoto: ['https://media.tacdn.com/media/attractions-splice-spp-674x446/09/34/bb/7f.jpg', 
      'https://www.atravelmate.com/wp-content/uploads/2020/03/bat-trang-a-star-of-hanoi-craft-village-tourism.jpg',
      'https://static.kinhtedothi.vn/w960/images/upload/2021/12/23/bat-trang-5.jpg',],
    location: Location(
      region: 'Hanoi',
      subRegion: 'South East of Hanoi',
      country: 'Vietnam',
      location: 'Bat Trang Village',
      address: 'Bát Tràng, Gia Lâm, Hanoi, Vietnam',
      latitude: 20.975441840010213, 
      longitude: 105.91190813862296,
    ),
    date: '2022-06-01',),
  Event(
    title: 'Summer Crafts \n& Prints Market',
    subTitle: 'Art & Craft Event',
    category: 'Event',
    content: 'Summer Crafts & Prints Market is a fair that brings together professional craft makers and artists who use print as a medium to convey their original creations. If you have ever been overwhelmed by the meticulousness of handmade products created by the manufacturers themselves in Vietnam, SCPM will open up a new land for you to discover subtleties and open perspectives of printing products.',
    photoCover: 'images/cover-summer-market.jpg',
    urlPhoto: ['https://vcdn1-dulich.vnecdn.net/2019/07/25/nghe-khac-dau-pho-co-ha-noi-vnexpress-2-1564028702.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=dhvNqQhvC6OW_KNm23-9pw',
      'https://vcdn1-dulich.vnecdn.net/2022/05/16/20220514-172739-2-1652671265.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=fiu-l7xwSM1TIGc6tOFcRA',
      'https://vcdn1-dulich.vnecdn.net/2022/05/14/1-1652546539.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=ShTkcpfzbndNHCQJTuzJbA',],
    location: Location(
      region: 'Hanoi',
      subRegion: 'Dong Da',
      country: 'Vietnam',
      location: 'Complex 01',
      address: '29, 31/67, Tay Son, Dong Da, Ha Noi, Vietnam',
      latitude: 21.010734349791186, 
      longitude: 105.82676521319165,
    ),
    date: '2022-06-01',),
];