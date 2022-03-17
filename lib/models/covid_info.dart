class CovidInfo {
  int? updated;
  int? cases;
  int? todayCases;
  int? deaths;
  int? todayDeaths;
  int? recovered;
  int? todayRecovered;
  int? active;
  int? critical;
  int? casesPerOneMillion;
  double? deathsPerOneMillion;
  int? tests;
  double? testsPerOneMillion;
  int? population;
  int? oneCasePerPeople;
  int? oneDeathPerPeople;
  int? oneTestPerPeople;
  double? activePerOneMillion;
  double? recoveredPerOneMillion;
  double? criticalPerOneMillion;
  int? affectedCountries;

  CovidInfo(
      {this.updated,
        this.cases,
        this.todayCases,
        this.deaths,
        this.todayDeaths,
        this.recovered,
        this.todayRecovered,
        this.active,
        this.critical,
        this.casesPerOneMillion,
        this.deathsPerOneMillion,
        this.tests,
        this.testsPerOneMillion,
        this.population,
        this.oneCasePerPeople,
        this.oneDeathPerPeople,
        this.oneTestPerPeople,
        this.activePerOneMillion,
        this.recoveredPerOneMillion,
        this.criticalPerOneMillion,
        this.affectedCountries});

  CovidInfo.fromJson(Map<String, dynamic> json) {
    updated = json['updated'];
    cases = json['cases'];
    todayCases = json['todayCases'];
    deaths = json['deaths'];
    todayDeaths = json['todayDeaths'];
    recovered = json['recovered'];
    todayRecovered = json['todayRecovered'];
    active = json['active'];
    critical = json['critical'];
    casesPerOneMillion = json['casesPerOneMillion'];
    deathsPerOneMillion = json['deathsPerOneMillion'];
    tests = json['tests'];
    testsPerOneMillion = json['testsPerOneMillion'];
    population = json['population'];
    oneCasePerPeople = json['oneCasePerPeople'];
    oneDeathPerPeople = json['oneDeathPerPeople'];
    oneTestPerPeople = json['oneTestPerPeople'];
    activePerOneMillion = json['activePerOneMillion'];
    recoveredPerOneMillion = json['recoveredPerOneMillion'];
    criticalPerOneMillion = json['criticalPerOneMillion'];
    affectedCountries = json['affectedCountries'];
  }


}


// class CovidInfo {
//   List<RegionData>? regionData;
//
//   CovidInfo({this.regionData});
//
//   CovidInfo.fromJson(Map<String, dynamic> json) {
//     if (json['regionData'] != null) {
//       regionData = <RegionData>[];
//       json['regionData'].forEach((v) {
//         regionData!.add(new RegionData.fromJson(v));
//       });
//     }
//   }
//
// }
//
// class RegionData {
//   String? country;
//   int? totalCases;
//   int? newCases;
//   int? totalDeaths;
//   int? newDeaths;
//   int? totalRecovered;
//   int? newRecovered;
//   int? activeCases;
//   int? seriousCritical;
//   int? casesPerMil;
//   int? deathsPerMil;
//   int? totalTests;
//   int? testsPerMil;
//   int? population;
//
//   RegionData(
//       {this.country,
//         this.totalCases,
//         this.newCases,
//         this.totalDeaths,
//         this.newDeaths,
//         this.totalRecovered,
//         this.newRecovered,
//         this.activeCases,
//         this.seriousCritical,
//         this.casesPerMil,
//         this.deathsPerMil,
//         this.totalTests,
//         this.testsPerMil,
//         this.population});
//
//   RegionData.fromJson(Map<String, dynamic> json) {
//     country = json['country'];
//     totalCases = json['totalCases'];
//     newCases = json['newCases'];
//     totalDeaths = json['totalDeaths'];
//     newDeaths = json['newDeaths'];
//     totalRecovered = json['totalRecovered'];
//     newRecovered = json['newRecovered'];
//     activeCases = json['activeCases'];
//     seriousCritical = json['seriousCritical'];
//     casesPerMil = json['casesPerMil'];
//     deathsPerMil = json['deathsPerMil'];
//     totalTests = json['totalTests'];
//     testsPerMil = json['testsPerMil'];
//     population = json['population'];
//   }
//
// }



// class CovidInfo {
//   bool? error;
//   int? statusCode;
//   String? message;
//   Data? data;
//
//   CovidInfo({this.error, this.statusCode, this.message, this.data});
//
//   CovidInfo.fromJson(Map<String, dynamic> json) {
//     error = json['error'];
//     statusCode = json['statusCode'];
//     message = json['message'];
//     data = json['data'] != null ? new Data.fromJson(json['data']) : null;
//   }
//
// }
//
// class Data {
//   Null? recovered;
//   int? deaths;
//   int? confirmed;
//   String? lastChecked;
//   String? lastReported;
//   String? location;
//
//   Data(
//       {this.recovered,
//         this.deaths,
//         this.confirmed,
//         this.lastChecked,
//         this.lastReported,
//         this.location});
//
//   Data.fromJson(Map<String, dynamic> json) {
//     recovered = json['recovered'];
//     deaths = json['deaths'];
//     confirmed = json['confirmed'];
//     lastChecked = json['lastChecked'];
//     lastReported = json['lastReported'];
//     location = json['location'];
//   }
//
// }