import 'GenericApi.dart';
import 'Country.dart';

class ApiCountry{

  static final String dominio='ajayakv-rest-countries-v1.p.rapidapi.com';
  static final Map<String, String> jsonHeaders={
    "x-rapidapi-host": "ajayakv-rest-countries-v1.p.rapidapi.com",
    "x-rapidapi-key": "8558cf63a1mshc7b89b9cadc5a32p1c2318jsn53e3c540978f"
  };

  getCountryZona({
    String restaurant_tagcategory_standalone = "10591",
    String lunit = "km",
    String restaurant_tagcategory = "10591",
    String limit = "30",
    String currency = "EUR",
    String lang = "it_IT",
    String location_id = "293919"
  }){
      final String path='/restaurants/list';
      Map<String,String> queryParameters={
        "restaurant_tagcategory_standalone" : restaurant_tagcategory_standalone,
        "lunit" : lunit,
        "restaurant_tagcategory":restaurant_tagcategory,
        "limit":limit,
        "currency":currency,
        "lang":lang,
        "location_id":location_id
      };

      GenericApi api= GenericApi.https(dominio: dominio, pathUrl: path, queryParameters: queryParameters, jsonHeaders: jsonHeaders);
      return api.fetchData(Country.fromJson);
  }

}