import 'package:flutter/material.dart';
import 'package:hotels/utils/image.dart';
import 'package:hotels/utils/string.dart';

class Country {
  final NetworkImage? countryImages;
  final String? countryNames;
  final List<HotelData>? hotel;

  Country({required this.countryImages, this.countryNames, this.hotel});
}

class HotelData {
  final NetworkImage hotelImage;
  final String hotelname;

  HotelData({
    required this.hotelImage,
    required this.hotelname,
  });
}

List<Country> countrydata = [
  Country(
      countryImages: newzealandImage,
      countryNames: StringRes.newzealand,
      hotel: [
        HotelData(
            hotelImage: newzealandhotelImage,
            hotelname: StringRes.newzealandhotel)
      ]),
  Country(countryImages: indonesiaImage, countryNames: StringRes.indonesia),
  Country(countryImages: indiaImage, countryNames: StringRes.india),
  Country(countryImages: canadaImage, countryNames: StringRes.canada),
  Country(countryImages: japanImage, countryNames: StringRes.japan),
  Country(countryImages: singaporImage, countryNames: StringRes.singapor),
  Country(countryImages: londonImage, countryNames: StringRes.london),
  Country(countryImages: dubaiImage, countryNames: StringRes.dubai),
];
