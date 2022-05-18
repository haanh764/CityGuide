import 'package:city_guide/model/location.dart';

class Trip {
  String name;
  String description;
  String duration;
  double price;
  List<String> places;
  double rating;
  String photoCover;
  List<String> urlPhoto;
  String category;
  Location location;
  bool favorite;

  Trip({
    required this.name,
    required this.description,
    required this.duration,
    required this.price,
    required this.places,
    required this.rating,
    required this.photoCover,
    required this.urlPhoto,
    required this.category,
    required this.location,
    required this.favorite,
  });
}

var tripList = [
  Trip(
    name: 'Hoa Lo Prison Night Tour',
    description:
        'A night tour of Hanoi`s Hoa Lo Prison, called “Sacred Night — Glorious Vietnamese Spirit,”. It will take visitors on a rollercoaster ride of emotions: horror at the brutality of the colonial prison, admiration for the prisoners and their sacrifice, and pride in the unyielding spirit of those who were part of Vietnam`s glorious history.',
    duration: '2 Hours',
    price: 7.0,
    places: [
      'Hoa Lo Prison Relic including ticket price.',
    ],
    rating: 5.0,
    photoCover: 'assets/images/cover-night-tour.jpeg',
    urlPhoto: [
      'https://res.klook.com/images/fl_lossy.progressive,q_65/c_fill,w_666,h_444/w_41,x_7,y_7,g_south_west,l_Klook_water_br_trans_yhcmh3/activities/ci1goetuaxfkhinnn3en/SacredNight2:LivinglikeFlowersTouratHoaLoPrisonRelic.jpg',
      'https://res.klook.com/image/upload/c_fill,w_960,h_460,f_auto/w_80,x_15,y_15,g_south_west,l_Klook_water_br_trans_yhcmh3/activities/yaz0lgg3pc1l3go8vv7y.webp',
      'https://res.klook.com/image/upload/c_fill,w_960,h_460,f_auto/w_80,x_15,y_15,g_south_west,l_Klook_water_br_trans_yhcmh3/activities/z43dycywfgx4tfl0zbm2.webp',
      'https://vnn-imgs-f.vgcloud.vn/2020/06/29/20/night-at-hoa-lo-prison-tour-to-be-launched-1.jpg',
    ],
    category: 'History',
    location: Location(
      country: 'Vietnam',
      address: 'No 1 Hoa Lo, Tran Hung Dao, Hoan Kiem, Hanoi',
      latitude: 21.026396681738273,
      longitude: 105.85080978046621,
    ),
    favorite: true,
  ),
  Trip(
    name: 'Hanoi Street Food Tour',
    description:
        'Discovering Hanoi`s Old Quarter street foods can be a leap of faith without a guide to steer you to the must-eats and prevent you getting lost. With this small-group tour, you`ll visit tried-and-trusted food spots to sample classics, such as steamed pancakes, noodle soup, and more, all with a guide to describe each dish and help you navigate.\n Meeting point at: 01 Hang Ngang, Hang Dao, Hoan Kiem, Hanoi.',
    duration: 'Full Day',
    price: 29.89,
    places: [
      'Breakfast - Pho Ly Quoc Su (Beef Noodle)',
      'Long Vi Dung Restaurant (Green Papaya Salad With Dried Beef)',
      'Lunch - Bun Cha Restaurant (Grilled Pork With Noodle)',
      'Dessert - Che Ba Thin (Sweet Soup)',
      'Snack - Thit Xien Nuong (Street Pork Barbeque)',
      'Dinner - Ba Son Sticky Rice',
      'Ta Hien Beer and Street Food',
    ],
    rating: 4.8,
    photoCover: 'assets/images/cover-street-food.jpg',
    urlPhoto: [
      'https://images.foody.vn/res/g1/8887/prof/s576x330/foody-mobile-0drisngl-jpg-612-635781077873801273.jpg',
      'https://fastly.4sqi.net/img/general/600x600/22561210_1C4rWTqemeTA0nc7AtnULIJndNsKDGHHiT0yAP1e_Hk.jpg',
      'https://images.foody.vn/res/g7/69740/s800/foody-bun-cha-hang-quat-154-637128215397537835.jpg',
      'https://images.foody.vn/video/s800x450/foody-che%20bat%20dan-636081674381350984.jpg',
      'https://images.foody.vn/res/g64/632940/prof/s576x330/file_restaurant_photo_or7b_16217-82846907-210523141607.jpeg',
      'https://images.foody.vn/res/g26/256644/s800/foody-xoi-ba-xon-459-636731376968966453.jpg',
      'https://images.foody.vn/res/g3/24606/s/foody-bia-pho-co-ta-hien-666-635731891294719887.jpg',
    ],
    category: 'Food and Drink',
    location: Location(
      country: 'Vietnam',
      address: 'Hang Ngang, Hoan Kiem, Hanoi',
      latitude: 21.03435940400758, 
      longitude: 105.85098012081463,
    ),
    favorite: true,
  ),
  Trip(
    name: 'Coffee Lovers Tour',
    description:
        'Heavily influenced by its French colonial past, Hanoi`s coffee scene promises something quite unique. From modern brews to traditional egg coffees and robustas, the city offers something for any kind of coffee lover. This tour offers a glimpse of the city`s coffee scene, with a focus on the coffee shops and coffee bars.\n Meeting point at: 01 Hang Ngang, Hang Dao, Hoan Kiem, Hanoi.',
    duration: 'Half Day',
    price: 24.36,
    places: [
      'Dinh Cafe',
      'Giang Cafe',
      'Tranquil Books and Coffee',
      'Blackbird Coffee',
      'Cong Cafe',
    ],
    rating: 4.9,
    photoCover: 'assets/images/cover-cafe.jpg',
    urlPhoto: [
      'https://images.foody.vn/res/g1/9247/prof/s576x330/foody-mobile-45564654-jpg-313-636127521466786573.jpg',
      'https://images.foody.vn/res/g66/652200/prof/s640x400/foody-mobile-t1-jpg-819-636281920279710947.jpg',
      'https://images.foody.vn/res/g21/200279/s/foody-cong-caphe-my-dinh-373-635889043568731421.jpg',
      'https://images.foody.vn/res/g102/1014467/prof/s640x400/foody-upload-api-foody-mobile-hmzz-200421180221.jpg',
      'https://1.bp.blogspot.com/-uqG9yt480g4/XqrvKAJkjqI/AAAAAAAAALg/whjiNxQkAeEmVsEbm05oVIPs0s4p3gxmQCLcBGAsYHQ/s1600/blackbird-coffee%2B%25281%2529.jpg',
    ],
    category: 'Foods',
    location: Location(
      country: 'Vietnam',
      address: 'Hang Ngang, Hoan Kiem, Hanoi',
      latitude: 21.03435940400758, 
      longitude: 105.85098012081463,
    ),
    favorite: false,
  ),
  Trip(
    name: 'Temples & Museums Tour',
    description:
        'Explore Hanoi`s rich architecture and culture on a tour that fits all of the highlights into a half-day excursion perfect for busy travelers who have limited time in the city. While the bustling city can be overwhelming on your own, with a small-group tour you don`t have to worry about navigating the busy streets and can learn about the sites along the way from your guide. The tour including: \n - Temple of Literature & National University (Quoc Tu Giam) - It is one of several temples in Vietnam which is dedicated to Confucius, sages and scholars. The temple is located to the south of the Imperial Citadel of Thăng Long. The various pavilions, halls, statues and stelae of doctors are places where offering ceremonies, study sessions and the strict exams of the Đại Việt took place. \n - Ho Chi Minh Mausoleum: The Chairman Ho Chi Minh Mausoleum is a mausoleum which serves as the resting place of Vietnamese Revolutionary leader Ho Chi Minh in Hanoi, Vietnam. It is a large building located in the center of Ba Dinh Square, where Ho, Chairman of the Workers` Party of Vietnam from 1951 until his death in 1969, read the Declaration of Independence on 2 September 1945, establishing the Democratic Republic of Vietnam. It is also known as Ba Dinh Mausoleum and is open to the public. \n -Tran Quoc Pagoda: Tran Quoc Pagoda located by Thanh Nien Road has a history of about 1400 years, which is the oldest temple in Thang Long, Hanoi in particular and in Vietnam in general.\nMeeting point at: 58 Quoc Tu Giam, Van Mieu, Hanoi.',
    duration: 'Half Day',
    price: 28.72,
    places: [
      'Temple of Literature & National University',
      'Ho Chi Minh Mausoleum',
      'Tran Quoc Pagoda',
    ],
    rating: 4.7,
    photoCover: 'assets/images/cover-temples.jpg',
    urlPhoto: [
      'https://vcdn-vnexpress.vnecdn.net/2018/11/16/van-mieu-3506-1542362274.jpg',
      'https://vcdn1-dulich.vnecdn.net/2017/08/17/Langbac1-1502954003.jpg?w=500&h=300&q=100&dpr=1&fit=crop&s=4Myy1-pdSh5-BBRUioHQFg',
      'https://vcdn1-dulich.vnecdn.net/2015/03/05/1-8871-1425551776.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=5AD9lNg6JGjcRYbPzUgGsg',
    ],
    category: 'History',
    location: Location(
      country: 'Vietnam',
      address: '58 Quoc Tu Giam, Van Mieu, Hanoi',
      latitude: 21.02771773140162, 
      longitude: 105.83570772090687,
    ),
    favorite: false,
  ),
  Trip(
    name: 'Tour for Young Travellers',
    description:
        'This tour covers the most popular places in Hanoi for young people to visit. Live a day as a genZ in Hanoi! The tour includes: \n - Complex 01: Complex 01 in Tay Son, Hanoi is the gathering place of many fashion shops, cafes, and restaurants, consisting of 3 floors with an open space design, mainly taking in natural light. The architecture of this place is a harmonious blend of classical and modern, which is a new place to be "checked-in" by young people. It will be the best place if you want to get perfect photos. \n - We Escape: the best reality Escape Game provider in Ha Noi.\n - Vincom Center for Contemporary Art VCCA: VCCA impresses with its artistic space and extremely modern and minimalist architecture. Unlike other museums, VCCA brings art to the public with a very new, creative, and interesting approach. From time to time, this place will organize exhibitions with different themes. \n - Lotte Observation Deck: An island in the sky. The Sky Walk features a wide reaching sight of the city, as if walking on Hanoi`s cloud.\nMeeting point at: Royal City, 72 Nguyen Trai, Hanoi.',
    duration: 'Full Day',
    price: 40.0,
    places: [
      'Complex 01',
      'We Escape',
      'Vincom Center for Contemporary Art VCCA',
      'Lotte Observation Deck',
    ],
    rating: 4.9,
    photoCover: 'assets/images/cover-entertainment.jpg',
    urlPhoto: [
      'https://vcdn-dulich.vnecdn.net/2021/01/29/complex-01-8033-1611905423.jpg',
      'https://ik.imagekit.io/tvlk/xpe-asset/AyJ40ZAo1DOyPyKLZ9c3RGQHTP2oT4ZXW+QmPVVkFQiXFSv42UaHGzSmaSzQ8DO5QIbWPZuF+VkYVRk6gh-Vg4ECbfuQRQ4pHjWJ5Rmbtkk=/2001726750435/We%2520Escape%2520Saigon%2520Tickets-a68c93f5-e7fc-4399-b48b-642270b5d281.jpeg?_src=imagekit&tr=c-at_max,h-512,q-60,w-720',
      'https://vcdn1-giaitri.vnecdn.net/2021/06/26/vcca-1-1624709659-6068-1624709743.jpg?w=500&h=300&q=100&dpr=1&fit=crop&s=E6_SLFQRUVLCBbEkjYBeAg',
      'https://vcdn-english.vnecdn.net/2019/05/28/image-1559049163-2417-1559049595.png',
    ],
    category: 'Entertainment',
    location: Location(
      country: 'Hanoi',
      address: 'Hanoi',
      latitude: 21.000901309561407, 
      longitude: 105.8159817268957,
    ),
    favorite: true,
  ),
];
