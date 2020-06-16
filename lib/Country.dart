

class Country{

  String name;

  Country({String name}){

  }

    static fromJson(dynamic json){
      return Country(
          name: json['data'][0]['name']
      );
    }
}