import 'package:city_guide/model/location.dart';

class Accommodation {
  String name;
  String category;
  String description;
  String photoCover;
  List<String> urlPhoto;
  Location location;
  double rating;
  List<String> reviews;

  Accommodation({
    required this.name,
    required this.category,
    required this.description,
    required this.photoCover,
    required this.urlPhoto,
    required this.location,
    required this.rating,
    required this.reviews,
  });
}

var accommodationList = [
  Accommodation(
    name: 'Sofitel Legend\nMetropole Hanoi',
    category: 'Hotel',
    description:
      'A prominent fixture in the heart of Hanoi since 1901, French colonial-style Sofitel Legend Metropole Hanoi – with its white façade, green shutters, wrought iron detail, and lush courtyard lawn – portrays an authentic sense of rich heritage, fascinating history and romance. The hotel boasts a long tradition as a popular rendezvous for discerning travelers, among them ambassadors, celebrities, and heads of state. Metropole Hanoi has been the recipient of numerous international awards for its excellent service. Celebrating the passion for great cuisine, the hotel houses a complement of distinctive bars and restaurants, including the bespoke cocktail bar, whisky lounge and restaurant angelina, Parisian café-inspired La Terrasse, haute cuisine Le Beaulieu, and traditional Vietnamese gastronomy Spices Garden.',
    photoCover: 'images/cover-metropol.jpg',
    urlPhoto: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/dc/33/3b/la-terrasse-du-metropole.jpg?w=700&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/b0/f1/74/le-club-bar.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/47/b9/16/pool--v17858996.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/b0/f0/c8/grand-premium-bathroom.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/76/06/ea/guest-room.jpg?w=1100&h=-1&s=1',
    ],
    location: Location(
      country: 'Vietnam',
      address: '15 Ngo Quyen Street, Trang Tien Ward, Hoan Kiem District',
      latitude: 21.02563280538883, 
      longitude: 105.8564071843558,
    ),
    rating: 4.8,
    reviews: ['From the moment I entered Metropole, I was greeted by kind and helpful staff. My room was great, the breakfast was even better, but the staff were the best part. They were very responsive to my needs and flexible to my many reservation changes, and attentive to my needs. At metropole, they pay attention to the details that make a guest stay better, and I appreciated that. Thank you for your service.', 
      'Fab location in the affluent French Quarter, stunning Art Deco style facility, gorgeous food (do take breakfast poolside, a must) a whiskey 🥃 bar that I didn’t get to (foolish!) and, this the reason why I will return… the management and staff are superb. From front of house to house maids to restaurant and bar staff there are splendid.', 
      'We had our mandatory quarantine here for 8 days. Service and food were outstanding! Never felt better taken care of in other 5 star hotels. Although our rooms have seen better days, they were clean, comfortable and still luxurious. Water pressure is EXCELLENT! Looking forward to non-quarantine stays at this hotel. Highly recommended for both pleasure and quarantine.', 
      ],
  ),
  Accommodation(
    name: 'Dolce by\nWyndham Hanoi\nGolden Lake',
    category: 'Hotel',
    description:
      'Located in the central district of Hanoi and by Giang Vo lake, Dolce by Wyndham Hanoi Golden Lake is a state-of-the-art architecture of the capital city. The hotel building exterior is fully 24k gold-plated which comes along with classic luxury style interior. Your stay with us is full of discovery and inspiration. Dolce by Wyndham Hanoi Golden Lake offers 342 luxurious guestrooms with 10 duplex suites and 1 presidential duplex suite. Each room is equipped with imperial style facilities and glamorous golden touch bathroom appliances. As the unequivocal leader in meetings and group accommodations, we can help plan the perfect meeting down to the last detail with 7 fully-furnished conference rooms with natural daylight and maximum group capacity 1163m2. We aim to offer you inspirational tastes and dining experience with French Lounge & Restaurant, All-day Dining Restaurant, Chinese Restaurant, Sushi Bar and Sky Bar. A captivating 24k golden plating infinity pool is complimentary for all guests. Spectacular Giang Vo lake view and West lake view from the hotel will surely amaze you. At Dolce by Wyndam Hanoi Golden Lake, we aim to transform every moment with you into extraordinary opportunity and to inspire you. Whatever you need to enhance your stay – to create, to innovate, to learn, or to grow – let us be your muse.',
    photoCover: 'images/cover-dolce.jpg',
    urlPhoto: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/ab/74/e7/caption.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/bf/1d/04/dolce-by-wyndham-hanoi.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/51/94/07/guest-room-bath.jpg?w=1100&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/51/93/e1/guest-room.jpg?w=1100&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/bf/1e/44/dolce-by-wyndham-hanoi.jpg?w=1200&h=-1&s=1',
    ],
    location: Location(
      country: 'Vietnam',
      address: 'B7 Giang Vo, Ba Dinh Ba Dinh, Hanoi',
      latitude: 21.029718948608355, 
      longitude: 105.82138448512673,
    ),
    rating: 4.5,
    reviews: ['The hotel was extremely comfortable, reasonably priced and the staff (including Valerie at reception) are great! There is a high quality and spacious gym, an amazing rooftop infinity pool and an e-gaming/casino. I stayed for 3 nights and will definitely return',
      'Dolce has a top-quality hospitality staff with amenities. Very friendly and willing to make your stay comfortable. In particular, Jackie was very helpful in translating stuff for me. He went out of his way to help. I would highly recommend this hotel if you are looking for a comfortable stay without all the extra costs that come with it. The hotel is well built and has a very nice gym compared to some other hotels I have been to. The pool is very nice and has a hot tub built into it. And since it is on the top of the roof - it gets sun all day',
      'Wonderful, incredible and really comfortable. A very nice place to be in couple or family. Clean rooms, and wide areas indoor and outdoor. The views of Sunset and down always superb from the pool. Excellent food at the restaurant. Staff are well trained and supportive.',],
  ),
  Accommodation(
    name: 'Rooftop Garden',
    category: 'Studio',
    description:
      'Modern open plan super spacious apartment in historic Old Quarter . Panoramic view from the ROOFTOP GARDEN will give you the best views of City and full view of majestic Old Quarter. Hoan Kiem Lake, Coffee shops, museums, sightseeing within walking distance. Separate scullery/ laundry & full open plan kitchen. Private elevator and indoor parking included. Best Airbnb apartment in Hanoi Old Quarter!',
    photoCover: 'images/cover-studio.jpg',
    urlPhoto: [
      'https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/284953189.jpg?k=5b377b40a3337971737c9cc4f6ca120ab731338a6e3068144c2cb15463ad650c&o=&hp=1',
      'https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/284952971.jpg?k=b19ef3139748dff3b67c41e45beb78aa073a37241b36c53fb840d7ff42693aa5&o=&hp=1',
      'https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/269849522.jpg?k=e04747cdbc535a7b95419d0772218eb05439fa38551480463dea07f63bb89267&o=&hp=1',
      'https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/269849533.jpg?k=e256714a3a6d3b0430dbe19b92feee345eaadbeaa681b20c2a7e5b80f3a2bb80&o=&hp=1',
      'https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/264577598.jpg?k=0badd7087fbd5e7f81c264db38b510e0a015f0b319db22742d3c66baaf0021ac&o=&hp=1',
    ],
    location: Location(
      country: 'Vietnam',
      address: '14B1, Ly Nam De, Hang Ma, Hoan Kiem, Hanoi, Vietnam',
      latitude: 21.037787742244447, 
      longitude: 105.84545739991246,
    ),
    rating: 4.4,
    reviews: ['I like the location of this serviced residence. It is near everything ( within pleasant walk). Quiet at night, vibrant at day. Near many military related authorities so it is safe staying here ( from a foreign female perspective).',
      'Excelent accomodation with nice decoration. Highly recommended for anyone visit Hanoi',
      'What a beautiful apartment with perfect views over the  Quarter. Perfect location, beautiful environment and affordable price!',],
  ),
];