import 'package:flutter/material.dart';

class Store {
  final String name, address, description, imageUrl;
  final Color color;
  Store({
    this.name,
    this.address,
    this.imageUrl,
    this.description,
    this.color,
  });
}

//---------------- FOOD
List<Store> food_sitdine = [
  Store(
      name: "Poor Calvin's",
      address: "10 Piedmont Ave NE, Atlanta, GA 30308",
      imageUrl:
          "https://popmenucloud.com/cdn-cgi/image/width=412,height=412,fit=scale-down,format=auto,quality=60/wghmzerj/741ef693-c091-420a-bd8d-78adeefa7d00.jpg",
      description: dummyText,
      color: Color(0xFF3D82AE)),
  Store(
      name: "Touch Indian Cuisine",
      address: "420 14th St NW, Atlanta, GA 30318",
      imageUrl:
          "https://cdn.tasteatlas.com/images/toplistarticles/d0e6a0a79d5f4197a51f4ca065393ffe.jpg",
      description: dummyText,
      color: Color(0xFFD3A984)),
  Store(
      name: "North Avenue Dining",
      address: "120 North Avenue NW, Atlanta, GA 30313",
      imageUrl:
          "https://d3mvlb3hz2g78.cloudfront.net/wp-content/uploads/2012/10/thumb_720_450_784.jpg",
      description: dummyText,
      color: Color(0xFF989493)),
];

List<Store> food_fast = [
  Store(
      name: "McDonald's",
      address: "1105 Northside Dr NW, Atlanta, GA 30318",
      imageUrl:
          "https://i1.wp.com/www.eatthis.com/wp-content/uploads/2020/07/mcdonalds-1.jpg",
      description: dummyText,
      color: Color(0xFF3D82AE)),
  Store(
      name: "Cook Out",
      address: "1112 Northside Dr NW, Atlanta, GA 30318",
      imageUrl:
          "https://hips.hearstapps.com/del.h-cdn.co/assets/17/30/768x384/landscape-1501260005-delish-cookout-burgers-facebook.jpg",
      description: dummyText,
      color: Color(0xFFD3A984)),
  Store(
      name: "Chick-fil-A",
      address: "350 Ferst Dr, Atlanta, GA 30332",
      imageUrl:
          "https://thechickenwire.chick-fil-a.com/-/media/amazon-cloudfront/images/cfacom/stories-images/2020/contactless-ordering/header.ashx?h=960&w=1440&la=en&hash=4A2BE10BB3B9E5A12FADCA5443C13B42",
      description: dummyText,
      color: Color(0xFF989493)),
];

List<Store> food_delivery = [
  Store(
      name: "Hattie B's",
      address: "299 Moreland Ave NE, Atlanta, GA 30307",
      imageUrl:
          "https://www.qsrmagazine.com/sites/default/files/styles/story_page/public/slideshow-images/slides/hattiebstendersandsides.jpg",
      description: dummyText,
      color: Color(0xFF3D82AE)),
  Store(
      name: "Zunzi's",
      address: "1971 Howell Mill Rd, Atlanta, GA 30318",
      imageUrl:
          "https://images.getbento.com/accounts/95304610a2a23d43ca7018c8683ca30f/media/images/32241Zunzis072.jpg",
      description: dummyText,
      color: Color(0xFFD3A984)),
  Store(
      name: "Desta Ethiopian",
      address: "3086 Briarcliff Rd NE, Atlanta, GA 30329",
      imageUrl:
          "https://cdn.vox-cdn.com/thumbor/U-dWon6ail73B7pjMCJfjRpYI_Y=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/13618082/15138414_1332280556795718_4352683764446552990_o.jpg",
      description: dummyText,
      color: Color(0xFF989493)),
];

//---------------- GROCERY
List<Store> grocery_mp = [
  Store(
      name: "Publix",
      address: "595 Piedmont Ave NE, Atlanta, GA 30308",
      imageUrl:
          "https://therelatives.org/wp-content/uploads/2019/08/publix-LOGO.png",
      description: dummyText,
      color: Color(0xFF3D82AE)),
  Store(
      name: "Kroger",
      address: "725 Ponce De Leon Ave NE, Atlanta, GA 30306",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Kroger_logo_%281961-2019%29.svg/1200px-Kroger_logo_%281961-2019%29.svg.png",
      description: dummyText,
      color: Color(0xFFD3A984)),
  Store(
      name: "Walgreens",
      address: "595 Piedmont Ave NE Ste 100, Atlanta, GA 30308",
      imageUrl:
          "https://4.bp.blogspot.com/-7j8Us1PvQ_c/VCLc5kkqNyI/AAAAAAAAE1A/HIXcx-z8ZaI/w1200-h630-p-k-no-nu/Logo%2BWalgreens.png",
      description: dummyText,
      color: Color(0xFF989493)),
];

List<Store> grocery_wholesale = [
  Store(
      name: "Costco",
      address: "500 Brookhaven Ave, Atlanta, GA 30319",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Costco_Wholesale_logo_2010-10-26.svg/800px-Costco_Wholesale_logo_2010-10-26.svg.png",
      description: dummyText,
      color: Color(0xFF3D82AE)),
  Store(
      name: "Sam's Club",
      address: "2901 Clairmont Rd, Atlanta, GA 30329",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Sams_Club.svg/1024px-Sams_Club.svg.png",
      description: dummyText,
      color: Color(0xFFD3A984)),
  Store(
      name: "Whole Foods",
      address: "650 Ponce De Leon Ave NE, Atlanta, GA 30308",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Whole_Foods_Market_201x_logo.svg/1200px-Whole_Foods_Market_201x_logo.svg.png",
      description: dummyText,
      color: Color(0xFF989493)),
];

List<Store> grocery_int = [
  Store(
      name: "Patel Brothers",
      address: "1709 Church St F, Decatur, GA 30033",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/en/thumb/b/bb/Patel_Brothers.svg/1280px-Patel_Brothers.svg.png",
      description: dummyText,
      color: Color(0xFF3D82AE)),
  Store(
      name: "Suvidha",
      address: "2821 Chastain Meadows Pkwy NW #120, Marietta, GA 30066",
      imageUrl:
          "https://lh3.googleusercontent.com/proxy/j3o8EdXKo8sCKvd638uA16oI_-uzGCTkYsPdFA9hi7mIh4s0svhq_t9C8TorHavXwRI01ZeqCACjOP9HI3ahbYe00hI4oag-kkhPUD7BQ8YmkPHqwfGGakn8EqfRj7izX0n5_a4",
      description: dummyText,
      color: Color(0xFFD3A984)),
  Store(
      name: "Cherians",
      address: "751 Dekalb Industrial Way Building #4, Decatur, GA 30033",
      imageUrl:
          "https://lh3.googleusercontent.com/proxy/CQKdVLm93HNfVASHaBUNK81CPlK1rkQwAke_dH9NXLOaF9T85uDHq1Av8ci6NVRwLnjWpGXP_iCXy6VDkYYyWNfuF0HLEKq1b1GV_LYW61nPtWAQAz58YKYlU62CK-1ZlVYagT_4mp_LYgReVJ_E5lkUIMrd4CxH8-W6TJNraODy5GFh",
      description: dummyText,
      color: Color(0xFF989493)),
];

//---------------- RETAIL
List<Store> retail_tech = [
  Store(
      name: "Apple",
      address: "3393 Peachtree Rd NE, Atlanta, GA 30326",
      imageUrl:
          "https://seeklogo.com/images/A/apple-logo-52C416BDDD-seeklogo.com.png",
      description: dummyText,
      color: Color(0xFF3D82AE)),
  Store(
      name: "Best Buy",
      address: "2537 Piedmont Rd NE, Atlanta, GA 30324",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Best_Buy_Logo.svg/807px-Best_Buy_Logo.svg.png",
      description: dummyText,
      color: Color(0xFFD3A984)),
  Store(
      name: "GameStop",
      address: "1801 Howell Mill Rd NW #550, Atlanta, GA 30318",
      imageUrl:
          "https://mlpnk72yciwc.i.optimole.com/cqhiHLc.WqA8~2eefa/w:auto/h:auto/q:75/https://bleedingcool.com/wp-content/uploads/2020/03/gamestop-logo.jpg",
      description: dummyText,
      color: Color(0xFF989493)),
];

List<Store> retail_general = [
  Store(
      name: "Walmart",
      address: "835 M.L.K. Jr Dr NW, Atlanta, GA 30314",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Walmart_logo.svg/1200px-Walmart_logo.svg.png",
      description: dummyText,
      color: Color(0xFF3D82AE)),
  Store(
      name: "Target",
      address: "375 18th St NW, Atlanta, GA 30363",
      imageUrl:
          "https://www.national-law.com/wp-content/uploads/2014/05/target-logo-reverse-wide.png",
      description: dummyText,
      color: Color(0xFFD3A984)),
  Store(
      name: "Kohl's",
      address: "1825 East-West Connector, Austell, GA 30106",
      imageUrl: "https://wjts.tv/wp-content/uploads/2020/03/unnamed.png",
      description: dummyText,
      color: Color(0xFF989493)),
];

List<Store> retail_home = [
  Store(
      name: "IKEA",
      address: "441 16th St NW, Atlanta, GA 30363",
      imageUrl:
          "https://cdn.mos.cms.futurecdn.net/H95bg4rrACvGwq5V2rtVUk-1200-80.jpg",
      description: dummyText,
      color: Color(0xFF3D82AE)),
  Store(
      name: "Home Depot",
      address: "650 Ponce De Leon Ave NE, Atlanta, GA 30308",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/TheHomeDepot.svg/1200px-TheHomeDepot.svg.png",
      description: dummyText,
      color: Color(0xFFD3A984)),
  Store(
      name: "Lowe's",
      address: "1280 Caroline St NE, Atlanta, GA 30307",
      imageUrl:
          "https://www.lowes.com/images/logos/2016_lowes_logo/lowes_logo_pms_280/Lowes_logo_pms_280.jpg",
      description: dummyText,
      color: Color(0xFF989493)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
