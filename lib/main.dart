// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:worldtime/worldtime.dart';

final _worldtimePlugin = Worldtime();

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String timeString = '';
  Map Weather = {'location':{"name":"Loading..."}, 'current':{'temp_c':"Loading...", "condition":{"text":"Loading..."}}, "forecast":{"forecastday":[
    {"hour": [
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
            {
              "temp_c": "Loading..",
              "is_day": 1,
              "condition": {"code": 0000}
            },
          ]}]}};
  double lat = 51.52;
  double lon = -0.11;

  DateTime timeInstance = DateTime.now();
  String bgSource = "assets/images/noon.jpg";

  timefxn() async {
    DateTime timeInstance = await _worldtimePlugin
    .timeByLocation(latitude: lat, longitude: lon);
    bgSource = backgroundSource(timeInstance);
    timeString = DateFormat.jm().format(timeInstance);
    setState(() {});
  }

  @override
  void initState() {
    weatherSystem();
    Timer.periodic(const Duration(seconds: 1), (Timer t) => timefxn());
    super.initState();
  }

  String hourlySymbol(int code, int day){
    switch (code) {
      case 0000:
        if (day == 1) {
          return "assets/weather_icon/sunny.png";
        } else {
          return "assets/weather_icon/night.png";
        }
      case 1282:
        return "assets/weather_icon/snow.png";
      case 1279:
        return "assets/weather_icon/snow.png";
      case 1276:
        return "assets/weather_icon/thunder_rain.png";
      case 1273:
        return "assets/weather_icon/thunder_rain.png";
      case 1264:
        return "assets/weather_icon/rain.png";
      case 1261:
        return "assets/weather_icon/rain.png";
      case 1258:
        return "assets/weather_icon/rain.png";
      case 1255:
        return "assets/weather_icon/rain.png";
      case 1252:
        return "assets/weather_icon/rain.png";
      case 1249:
        return "assets/weather_icon/rain.png";
      case 1246:
        return "assets/weather_icon/rain.png";
      case 1243:
        return "assets/weather_icon/rain.png";
      case 1240:
        return "assets/weather_icon/rain.png";
      case 1237:
        return "assets/weather_icon/snow.png";
      case 1225:
        return "assets/weather_icon/snow.png";
      case 1222:
        return "assets/weather_icon/snow.png";
      case 1219:
        return "assets/weather_icon/snow.png";
      case 1216:
        return "assets/weather_icon/snow.png";
      case 1213:
        return "assets/weather_icon/snow.png";
      case 1210:
        return "assets/weather_icon/snow.png";
      case 1207:
        return "assets/weather_icon/snow.png";
      case 1204:
        return "assets/weather_icon/snow.png";
      case 1201:
        return "assets/weather_icon/rain.png";
      case 1198:
        return "assets/weather_icon/rain.png";
      case 1195:
        return "assets/weather_icon/rain.png";
      case 1192:
        return "assets/weather_icon/rain.png";
      case 1189:
        return "assets/weather_icon/rain.png";
      case 1186:
        return "assets/weather_icon/rain.png";
      case 1183:
        return "assets/weather_icon/rain.png";
      case 1180:
        return "assets/weather_icon/rain.png";
      case 1171:
        return "assets/weather_icon/rain.png";
      case 1168:
        return "assets/weather_icon/rain.png";
      case 1153:
        return "assets/weather_icon/rain.png";
      case 1150:
        return "assets/weather_icon/rain.png";
      case 1147:
        return "assets/weather_icon/wind.png";
      case 1135:
        return "assets/weather_icon/wind.png";
      case 1117:
        return "assets/weather_icon/wind.png";
      case 1114:
        return "assets/weather_icon/wind.png";
      case 1087:
        return "assets/weather_icon/wind.png";
      case 1072:
        return "assets/weather_icon/wind.png";
      case 1069:
        return "assets/weather_icon/wind.png";
      case 1066:
        return "assets/weather_icon/wind.png";
      case 1063:
        return "assets/weather_icon/wind.png";
      case 1030:
        return "assets/weather_icon/wind.png";
      case 1009:
        return "assets/weather_icon/cloudy.png";
      case 1006:
        return "assets/weather_icon/cloudy.png";
      case 1003:
        if(day == 1){
          return "assets/weather_icon/cloudly_sunny.png";
        }else{
          return "assets/weather_icon/cloudy_night.png";
        }
      case 1000:
      if (day == 1) {
          return "assets/weather_icon/sunny.png";
        } else {
          return "assets/weather_icon/night.png";
        }
      

      default:
      if (day == 1) {
          return "assets/weather_icon/sunny.png";
        } else {
          return "assets/weather_icon/night.png";
        }
    }
  }

  String backgroundSource(current_time) {
    int currentTime = current_time.hour;

    if (currentTime >= 19 || currentTime < 5) {
      return "assets/images/night.jpg";
    } else if (currentTime >= 5 && currentTime < 12) {
      return "assets/images/morning.jpg";
    } else if (currentTime >= 12 && currentTime < 15) {
      return "assets/images/noon.jpg";
    } else if (currentTime >= 15 && currentTime < 19) {
      return "assets/images/evening.jpg";
    } else {
      return "assets/images/morning.jpg";
    }
  }

  Future<Map> fetchData(double lat, double lon, String nam) async {
    Uri url;

    if(nam == ""){
      url = Uri.parse(
      "http://api.weatherapi.com/v1/forecast.json?key=cc49219518db4b1a8fc153900241503&q=${lat},${lon}&days=1&aqi=no&alerts=no");
    }else{
      url = Uri.parse(
        "http://api.weatherapi.com/v1/forecast.json?key=cc49219518db4b1a8fc153900241503&q=${nam}&days=1&aqi=no&alerts=no");
    }

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data;
    } else {
      return {"location":{"name":"unknown"}};
    }
  }

  weatherSystem() async {
    Weather = await fetchData(lat, lon, "");
    lon = Weather["location"]["lon"];
    lat = Weather["location"]["lat"];
    setState(() {});
  }

  Future<void> updateLoc() async {
    Map WeatherNew = await fetchData(lat, lon, myController.text);
    if(WeatherNew["location"]["name"] == "unknown"){
      updateStat = "Unknown Location, Try Again!!";
    }else{
      _scaffoldKey.currentState!.openEndDrawer();
      updateStat = "";
      Weather = WeatherNew;
      lon = Weather["location"]["lon"];
      lat = Weather["location"]["lat"]; 
    }
    setState(() {});
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final TextEditingController myController = TextEditingController();
  String updateStat = "";

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldKey,
          drawer: Drawer(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextField(
                      controller: myController,
                      decoration: InputDecoration(
                        hintText: "Enter City"
                      ),
                    ),
                    SizedBox(height: 20,),
                    IconButton(onPressed: () => updateLoc(), icon: Icon(Icons.search_rounded)),
                    SizedBox(height: 20,),
                    Text(updateStat)
                  ],
                ),
              ),
            ),
          ),
          body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(bgSource), fit: BoxFit.cover)),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () => _scaffoldKey.currentState!.openDrawer(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              Icon(
                                Icons.location_on,
                                size: 30,
                              ),
                              Text(
                                Weather["location"]["name"],
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${Weather['current']['temp_c']}°",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 75,
                                    fontWeight: FontWeight.w400,
                                  )),
                              Text(timeString,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  )),
                              Text(DateFormat('EEEE').format(timeInstance),
                                  style: GoogleFonts.montserrat(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  )),
                              Text(
                                  DateFormat('MMMM dd, yyyy')
                                      .format(timeInstance),
                                  style: GoogleFonts.montserrat(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ],
                          ),
                          RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                                Weather['current']["condition"]['text'],
                                style: GoogleFonts.montserrat(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w300,
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(flex: 3, child: Container()),
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Center(
                              child: Text("Today's Weather",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ))),
                          Expanded(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                          AssetImage(hourlySymbol(Weather['forecast']['forecastday'][0]["hour"][0]["condition"]["code"],Weather['forecast']['forecastday'][0]["hour"][0]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("00:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text("${Weather['forecast']['forecastday'][0]["hour"][0]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                         AssetImage(hourlySymbol(
                                              Weather['forecast']['forecastday']
                                                      [0]["hour"][1]
                                                  ["condition"]["code"],
                                              Weather['forecast']['forecastday']
                                                  [0]["hour"][1]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("1:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text(
                                            "${Weather['forecast']['forecastday'][0]["hour"][1]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                          AssetImage(hourlySymbol(Weather['forecast']['forecastday'][0]["hour"][2]["condition"]["code"],Weather['forecast']['forecastday'][0]["hour"][2]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("2:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text(
                                            "${Weather['forecast']['forecastday'][0]["hour"][2]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                          AssetImage(hourlySymbol(Weather['forecast']['forecastday'][0]["hour"][3]["condition"]["code"],Weather['forecast']['forecastday'][0]["hour"][3]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("3:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text("${Weather['forecast']['forecastday'][0]["hour"][3]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                          AssetImage(hourlySymbol(Weather['forecast']['forecastday'][0]["hour"][4]["condition"]["code"],Weather['forecast']['forecastday'][0]["hour"][4]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("4:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text("${Weather['forecast']['forecastday'][0]["hour"][4]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                          AssetImage(hourlySymbol(
                                              Weather['forecast']['forecastday']
                                                      [0]["hour"][5]
                                                  ["condition"]["code"],
                                              Weather['forecast']['forecastday']
                                                  [0]["hour"][5]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("5:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text("${Weather['forecast']['forecastday'][0]["hour"][5]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                          AssetImage(hourlySymbol(
                                              Weather['forecast']['forecastday']
                                                      [0]["hour"][6]
                                                  ["condition"]["code"],
                                              Weather['forecast']['forecastday']
                                                  [0]["hour"][6]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("6:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text("${Weather['forecast']['forecastday'][0]["hour"][6]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                          AssetImage(hourlySymbol(
                                              Weather['forecast']['forecastday']
                                                      [0]["hour"][7]
                                                  ["condition"]["code"],
                                              Weather['forecast']['forecastday']
                                                  [0]["hour"][7]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("7:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text("${Weather['forecast']['forecastday'][0]["hour"][7]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                          AssetImage(hourlySymbol(
                                              Weather['forecast']['forecastday']
                                                      [0]["hour"][8]
                                                  ["condition"]["code"],
                                              Weather['forecast']['forecastday']
                                                  [0]["hour"][8]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("8:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text("${Weather['forecast']['forecastday'][0]["hour"][8]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                          AssetImage(hourlySymbol(
                                              Weather['forecast']['forecastday']
                                                      [0]["hour"][9]
                                                  ["condition"]["code"],
                                              Weather['forecast']['forecastday']
                                                  [0]["hour"][9]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("9:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text("${Weather['forecast']['forecastday'][0]["hour"][9]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                          AssetImage(hourlySymbol(
                                              Weather['forecast']['forecastday']
                                                      [0]["hour"][10]
                                                  ["condition"]["code"],
                                              Weather['forecast']['forecastday']
                                                  [0]["hour"][10]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("10:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text("${Weather['forecast']['forecastday'][0]["hour"][10]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                          AssetImage(hourlySymbol(
                                              Weather['forecast']['forecastday']
                                                      [0]["hour"][11]
                                                  ["condition"]["code"],
                                              Weather['forecast']['forecastday']
                                                  [0]["hour"][11]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("11:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text("${Weather['forecast']['forecastday'][0]["hour"][11]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                          AssetImage(hourlySymbol(
                                              Weather['forecast']['forecastday']
                                                      [0]["hour"][12]
                                                  ["condition"]["code"],
                                              Weather['forecast']['forecastday']
                                                  [0]["hour"][12]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("12:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text("${Weather['forecast']['forecastday'][0]["hour"][12]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                          AssetImage(hourlySymbol(
                                              Weather['forecast']['forecastday']
                                                      [0]["hour"][13]
                                                  ["condition"]["code"],
                                              Weather['forecast']['forecastday']
                                                  [0]["hour"][13]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("13:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text("${Weather['forecast']['forecastday'][0]["hour"][13]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                          AssetImage(hourlySymbol(
                                              Weather['forecast']['forecastday']
                                                      [0]["hour"][14]
                                                  ["condition"]["code"],
                                              Weather['forecast']['forecastday']
                                                  [0]["hour"][14]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("14:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text("${Weather['forecast']['forecastday'][0]["hour"][14]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                          AssetImage(hourlySymbol(
                                              Weather['forecast']['forecastday']
                                                      [0]["hour"][15]
                                                  ["condition"]["code"],
                                              Weather['forecast']['forecastday']
                                                  [0]["hour"][15]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("15:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text("${Weather['forecast']['forecastday'][0]["hour"][15]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                          AssetImage(hourlySymbol(
                                              Weather['forecast']['forecastday']
                                                      [0]["hour"][16]
                                                  ["condition"]["code"],
                                              Weather['forecast']['forecastday']
                                                  [0]["hour"][16]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("16:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text("${Weather['forecast']['forecastday'][0]["hour"][16]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                          AssetImage(hourlySymbol(
                                              Weather['forecast']['forecastday']
                                                      [0]["hour"][17]
                                                  ["condition"]["code"],
                                              Weather['forecast']['forecastday']
                                                  [0]["hour"][17]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("17:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text("${Weather['forecast']['forecastday'][0]["hour"][17]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                          AssetImage(hourlySymbol(
                                              Weather['forecast']['forecastday']
                                                      [0]["hour"][18]
                                                  ["condition"]["code"],
                                              Weather['forecast']['forecastday']
                                                  [0]["hour"][18]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("18:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text("${Weather['forecast']['forecastday'][0]["hour"][18]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                          AssetImage(hourlySymbol(
                                              Weather['forecast']['forecastday']
                                                      [0]["hour"][19]
                                                  ["condition"]["code"],
                                              Weather['forecast']['forecastday']
                                                  [0]["hour"][19]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("19:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text("${Weather['forecast']['forecastday'][0]["hour"][19]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                          AssetImage(hourlySymbol(
                                              Weather['forecast']['forecastday']
                                                      [0]["hour"][20]
                                                  ["condition"]["code"],
                                              Weather['forecast']['forecastday']
                                                  [0]["hour"][20]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("20:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text("${Weather['forecast']['forecastday'][0]["hour"][20]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                          AssetImage(hourlySymbol(
                                              Weather['forecast']['forecastday']
                                                      [0]["hour"][21]
                                                  ["condition"]["code"],
                                              Weather['forecast']['forecastday']
                                                  [0]["hour"][21]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("21:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text("${Weather['forecast']['forecastday'][0]["hour"][21]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                          AssetImage(hourlySymbol(
                                              Weather['forecast']['forecastday']
                                                      [0]["hour"][22]
                                                  ["condition"]["code"],
                                              Weather['forecast']['forecastday']
                                                  [0]["hour"][22]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("22:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text("${Weather['forecast']['forecastday'][0]["hour"][22]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 75,
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ImageIcon(
                                          AssetImage(hourlySymbol(
                                              Weather['forecast']['forecastday']
                                                      [0]["hour"][23]
                                                  ["condition"]["code"],
                                              Weather['forecast']['forecastday']
                                                  [0]["hour"][23]["is_day"])),
                                          size: 35,
                                        ),
                                        Text("23:00",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        Text("${Weather['forecast']['forecastday'][0]["hour"][23]["temp_c"]}°",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
