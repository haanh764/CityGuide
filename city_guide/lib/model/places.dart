import 'package:city_guide/model/location.dart';

class Place {
  String name;
  String category;
  String description;
  String voiceDescription;
  String photoCover;
  List<String> urlPhoto;
  String urlVideo;
  Location location;
  double rating;
  List<String> reviews;

  Place({
    required this.name,
    required this.category,
    required this.description,
    required this.voiceDescription,
    required this.photoCover,
    required this.urlPhoto,
    required this.urlVideo,
    required this.location,
    required this.rating,
    required this.reviews,
  });
}

var placeList = [
  Place(
    name: 'Hoa Lo Prison', 
    category: 'Historical', 
    description: 'Located at the centre of Ha Noi capital, Hoa Lo prison historical relic (Maison Centralna) is the testimony of a period of the fighting movements. It is a symbol of the nation’s fearless determination in struggle and the resilient spirit of the Vietnamese patriots who were kept here. Now many original artifacts are archived in the space of more than 2000m2, the Memorial Monument, original objects, sculptures, and the permanent exhibitions at Hoa Lo prison historical relic are set up to introduce visitors to its progress from when the French colonialists built the prison in 1896 until the liberation of the capital (October 1954): Period the French used the Prison to arrest the Vietnamese patriotic and revolutionary fighters. And the following period from 1964 to 1973, the Vietnamese government used a part of the Prison to hold the American Pilots.',
    voiceDescription: 'assets/voice_description/voice_hoalo_prison.mp3', 
    photoCover: 'assets/images/cover-hoalo.jpg', 
    urlPhoto: ['https://www.uncovervietnam.com/wp-content/uploads/2020/01/hanoi-hoa-lo-prison02.jpg', 
      'https://www.uncovervietnam.com/wp-content/uploads/2020/01/hanoi-hoa-lo-prison05.jpg', 
      'https://www.uncovervietnam.com/wp-content/uploads/2020/01/Maison-Centrale-Museum-Hanoi.jpg', 
      'https://1.bp.blogspot.com/-cRuPWHVdcK4/X4wx2FfApGI/AAAAAAAAJAk/5AWNFC9b1cQffxcn1d0DcJVXLdcAgFfegCLcBGAsYHQ/w640-h428/nha-tu-hoa-lo-9.jpeg', 
      'https://1.bp.blogspot.com/-ry5K72UiWvA/X4wxB9GTzYI/AAAAAAAAI_w/2FpFZL9Yc6cJH9T28X0V9lS4esDFuLxhwCLcBGAsYHQ/s640/nha-tu-hoa-lo.jpeg'], 
    urlVideo: 'DkKxRn0dMhI', 
    location: Location(
      country: 'Vietnam',
      address: 'No 1 Hoa Lo, Tran Hung Dao, Hoan Kiem, Ha Noi, Vietnam',
      latitude: 21.026396681738273,
      longitude: 105.85080978046621,
    ), 
    rating: 4.8, 
    reviews: [
      'Reviewer 1: A very good museum which provides good insight into the French colonial struggles from the perspective of Vietnam.  Enjoyable isnt the right way to describe a visit, but is is very insightful and we will worthwhile.  Also excellent value.',
      'Reviewer 2: This is one of the places in Hanoi that exhibits what happened before and during the Vietnam war. The place is quite dark. Maybe it is to give visitors the atmosphere of the inmates during the time. Recommend anyone who comes to Hanoi to visit this place.',
      'Reviewer 3: Hoa Lo Prison aka Hanoi Hilton. John McCain was held here with many other American POWs. Place is both extremely interesting and extremely gut wrenching at the same time. It`s a must visit though. If you don`t come visit then why are you even in Hanoi to begin with?',
      'Reviewer 4: A must see. The exhibits give a clear, if somewhat disturbing, view of the abuses by colonialism during the early 20th century. Usage during the US/Vietnam War is not mentioned.',
      'Reviewer 5: Good organizing museum. Easy to understand with audio option. It`s sad and very emotional to see the cruelty of war but it`s worth to visit if you have about 2 hours time.',
    ],
  ),
  Place(
    name: 'Hoan Kiem Lake', 
    category: 'Historical', 
    description: 'Hoan Kiem Lake (Lake of the Restored Sword) - A rare breed of turtle enjoys this popular lake almost as much as countless locals and tourists. Hoan Kiem Lake is a dynamic daily tableau, from morning walks amid locals doing exercises on the shore, to young couples water-gazing on park benches, to the multiple shopping and sight-seeing opportunities in the vicinity.  Centrally located in the city, Hoan Kiem Lake serves as a massive home base, and provides endless people-watching and recreational opportunities on the edge of the Old Quarter.', 
    voiceDescription: 'assets/voice_description/voice_hoan_kiem_lake.mp3', 
    photoCover: 'assets/images/cover-hoguom.png', 
    urlPhoto: ['https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2017/07/thap-rua-ve-dem.jpg', 
      'https://cdn.pixabay.com/photo/2021/03/02/15/24/ha-noi-6062859__340.jpg', 
      'https://baodaklak.vn/file/fb9e3a03798789de0179a1704dea238e/old-data/dataimages/201509/original/images1095320_dai_ly_ve_may_bay_di_ha_noi_04.jpg', 
      'https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2017/07/dac-nguyet-lau-768x432.jpg', 
      'https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2017/07/thap-hoa-phong.jpg'], 
    urlVideo: 'WR2ApqIYtfc', 
    location: Location(
      country: 'Vietnam',
      address: 'Hang Trong, Hoan Kiem, Hanoi, Vietnam',
      latitude: 21.028804778892198, 
      longitude: 105.85215012077187,
    ), 
    rating: 4.7, 
    reviews: [
      'Reviewer 1: I loved this place although it is very busy over the weekend. It`s a good place to chill and relax but too crowded sometimes. This is a great area to visit early in the morning or evening as sitting by the lake side. It`s a quite nice to having a coffee at a nearby café.',
      'Reviewer 2: Very peaceful and beautiful place for day and night strolls. So much good memories there ❤️',
      'Reviewer 3: This is a popular lake inside the Old Quarter of Hanoi City. Basically, this lake is a part of the drainage system in Hanoi City as its main function. Located in the city center near a shopping center, restaurant, bars, offices, and another business center, make this lake is becoming one of the tourist areas. For local people,  they build a temple on the small island in the lake with a wooden bridge to go there. So they come to this place to give respect to God. For your note, there would be a crowd along with the festival or a ritual of the religion. At night tourists and local people take a walk surrounding this lake to see the beauty of the lake by the reflection of the light on the surface of the water.',
      'Reviewer 4: Walking plaza around this area is quite good during weekend. Very lively atmosphere. You will also mired in to happy thoughts.',
      'Reviewer 5: It`s a nice place to stroll by in the evenings. Expect a lot of tourists, local crowd and vendors.. If you`re lucky, you`ll find a seat. If you truly want to view it in its glory, visit by night to experience the beauty of the lake when the red bridge is lit up',
    ],
  ),
  Place(
    name: 'Hanoi Opera House', 
    category: 'Art', 
    description: 'Resembling the Opéra Palais Garnier, Hanoi Opera House, built in 10 years since 1911 by two French architects. The magnificent building became one of the top landmarks in Hanoi. The Opera House hosts cultural entertaining performances, bamboo cirque, contemporary dance, orchestra concerts and government events. Come to the front gate to check availability and ticket to a performance in this iconic building.', 
    voiceDescription: 'assets/voice_description/voice_opera.mp3', 
    photoCover: 'assets/images/cover-opera-house.jpg', 
    urlPhoto: ['https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2017/07/nha-hat-lon-ha-noi.jpg', 
      'https://i-vnexpress.vnecdn.net/2018/10/12/nha-hat-lon-1384-1539344888_680x0.jpg', 
      'http://4.bp.blogspot.com/-ALu_SWYLb3E/URHkjvJTNgI/AAAAAAAAHOQ/PmSf_FowjIc/s1600/Nha+hat+lon+Ha+Noi+12.jpg', 
      'http://3.bp.blogspot.com/--p7i5v98Sqw/URHkRH_iXJI/AAAAAAAAHOA/pAQ8FOlpAgM/s1600/Nha+hat+lon+Ha+Noi+10.jpg', 
      'http://4.bp.blogspot.com/-WmmVoYOmpoM/URHj2PJPdQI/AAAAAAAAHNo/hNNWCm-cv34/s1600/Nha+hat+lon+Ha+Noi+07.jpg'], 
    urlVideo: 'X9vbZKZ5k2Y', 
    location: Location(
      country: 'Vietnam',
      address: 'No 1, Trang Tien, Hoan Kiem, Ha Noi, Vietnam',
      latitude: 21.024399434182282, 
      longitude: 105.85744925366731,
    ), 
    rating: 4.6, 
    reviews: [
      'Reviewer 1: Yup...the Opera House is very like the Paris Opera House (just smaller!) for one second you simply believe that you`re in Paris. It`s a lovely structure which, fortunately, is spared all of the communist propaganda of festoon & written notices on its leading so you are able to benefit from the lines of the structure of the structure.',
      'Reviewer 2: I would give this 6 stars if possible. One of the best places I have visited. We saw Tchaikovsky`s "Nutcracker" here and it was sublime. The building itself is a marvel, and the tour of it is essential whilst in Buenos Aires. Check for late bookings at ridiculous prices in "the gods" which is a great place to watch from.',
      'Reviewer 3: Beautiful building built by French in 1900, spectacular monument! Also inside is really nice with great acustic. Many different kind of performances often here, is a must to go place! Also just outside during day or night is full of life me aggregation spot for many Vietnamese! Amazing place!',
      'Reviewer 4: Beautiful, classical opera house in the heart of Hanoi. I came here to see the "My Village" acrobatic performance. Both the venue and the show are fantastic. It surpassed my expectations. I`ve seen multiple acrobatic shows around the world - Cirque du Soleil, House of Dancing Water, Chinese acrobatic shows - and this one deserves its place right up there! It has local flair to it that really captured the Vietnamese culture in a beautiful way.',
      'Reviewer 5: Since opera houses are intended for opera, theatre and concerts, the best way to evaluate is by attending such an event. I went to hear a classical concert featuring a stunning flautist. The acoustics and visibility were terrific, as was my physical comfort. The building was stunning, viewed from the outside, at night, and equally so from the inside. Highly recommended!',
    ],
  ),
  Place(
    name: 'St.Joseph Cathedral', 
    category: 'Historical', 
    description: 'St. Joseph`s Cathedral (Vietnamese: Nha Tho Lon Hanoi; French: Cathédrale Saint-Joseph de Hanoï) is a church on Nha Chung Street in the Hoan Kiem District of Hanoi, Vietnam. It is a late 19th-century Gothic Revival (Neo-Gothic style) church that serves as the cathedral of the Roman Catholic Archdiocese of Hanoi. The cathedral was named after Joseph, the patron saint of Vietnam. Construction began in 1886, with the architectural style described as resembling Notre Dame de Paris. The church was one of the first structures built by the French colonial government in Indochina when it opened in December 1886. It is the oldest church in Hanoi.', 
    voiceDescription: 'assets/voice_description/voice_cathedral.mp3', 
    photoCover: 'assets/images/cover-nhatho.jpg', 
    urlPhoto: ['https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2017/07/nha-tho-lon-ha-noi-2.jpg', 
      'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Hanoi_sjc.jpg/1200px-Hanoi_sjc.jpg', 
      'https://icdn.dantri.com.vn/thumb_w/640/125b55411d/2017/12/24/img20171224014011569-4316f.jpg', 
      'https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2017/07/nha-tho-lon-ha-noi-1-768x488.jpg', 
      'https://phongveminhquan.vn/wp-content/uploads/2017/11/nha-tho-lon-1.png'], 
    urlVideo: 'XJ45msOsdaI', 
    location: Location(
      country: 'Vietnam',
      address: '40 Nha Chung Street, Hang Trong, Hoan Kiem, Hanoi, Vietnam',
      latitude: 21.027560001783222, 
      longitude: 105.84863355573204,
    ), 
    rating: 4.5, 
    reviews: [
      'Reviewer 1: A beautiful and historic architecture, that needs to be seen during the day and night. It`s simply beautiful. Remember you need to see it twice, one in the day and the other at night. There are a lot of eateries, coffee joints and pubs nearby. You can see them in the panoramic pic.',
      'Reviewer 2: A must-see place for all tourists ti visit in Hanoi. Next to lots of restaurants, cafe and famous snacks in town.',
      'Reviewer 3: Today is a Sunday, I am here to pray for all people in the World. The Cathedral is very classic and old but the This Catholic Church is so Holly. I love here and come here when I will be in Ha Noi. Come to visit',
      'Reviewer 4: The church itself is amazing. Most people visit here are not believers, just for their social media posts. If you want to celebrate Xmas and NYE with calmer atmosphere, visit Ham Long Church.',
      'Reviewer 5: A beautiful and historic architecture. The church was lovely during Christmas period. There were decorations outside and the streets around were lit up. There are a lot of eateries, coffee joints and pubs nearby.',
    ],
  ),
  Place(
    name: 'Hanoi Train Street', 
    category: 'Attractions', 
    description: 'Located on the West side of Hanoi Old Quarter, Hanoi train street is a unique attraction where you can experience the “death-defying” moment when the train passes about 0.4 m away. The Hanoi Train Street is one of the most famous and adventurous tourist spots in Hanoi. It`s a tiny narrow street hidden in one of the back streets of Hanoi and surrounded by high narrow houses packed closely together. These families` backyards are the railways where the train passes a few times per day.', 
    voiceDescription: 'assets/voice_description/voice_train_street.mp3', 
    photoCover: 'assets/images/cover-train-street.jpg', 
    urlPhoto: ['https://nld.mediacdn.vn/2019/11/6/duongtau-15730414947011432462133.jpg', 
      'https://vcdn1-dulich.vnecdn.net/2019/10/06/Anh-1-1570323617.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=VCE5pM5fVQyXUYiDxuyYfQ', 
      'https://nld.mediacdn.vn/thumb_w/684/2019/10/8/7-1570539234558154048263.jpg', 
      'https://i-dulich.vnecdn.net/2019/09/06/Pho-Phung-Hung-Trung-Thu-Vnexpress9-1567752620_r_680x0.jpg', 
      'https://vcdn-kinhdoanh.vnecdn.net/2019/10/09/train-2-1640-1570556244.jpg'], 
    urlVideo: 'Q3oaAjH2nC8', 
    location: Location(
      country: 'Vietnam',
      address: '2RHV+M34, Dien Ban, Hoan Kiem, Hanoi, Vietnam',
      latitude: 21.029261971515727,
      longitude: 105.84267104038769,
    ), 
    rating: 4.3, 
    reviews: [
      'Reviewer 1: The check-in place should not be missed when coming to Hanoi. If you are lucky, you can see the train running right in front of your eyes. It feels great 🔥🔥',
      'Reviewer 2: Great place to relax and enjoy a drink. Train comes every 1-1.5 hrs. The locals have a schedule on hand. The train passes by awfully close and is fun. Remember to stay safe and don`t do anything stupid. The train conductors are playful and will give you an couple extra honks if you ask for it.',
      'Reviewer 3: We got lucky. Google said 7pm was the first train, while we got to see it at 545ish. A very nice place to visit, I`m happy we went during Tet when the city is dead and busy spots like this are open. Interestingly, I was reviewing a video I was making, of the train and one of the residences  heard it and started warning the entire street. Keen ears and communication.',
      'Reviewer 4: This place is amazing! Check it out and definitely buy drinks and food from the folks who live there and make a living serving the people enjoying the show.',
      'Reviewer 5: It was absolutely amazing and memorable place for us during our digital nomad trip. You can eat or drink delicious food, coffee and beer. I recommend it for everyone who want to travel to Hanoi. :)',
    ],
  ),
];