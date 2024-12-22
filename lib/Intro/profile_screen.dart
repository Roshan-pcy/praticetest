import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:praticetest/bottomScreen/main_screen.dart';
import 'package:praticetest/utilits/colors.dart';
import 'package:praticetest/utilits/constant.dart';
import 'package:praticetest/utilits/style.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileStartState();
}

class _ProfileStartState extends State<Profile> {
  TextEditingController? name = TextEditingController();
  String? selectedState = 'New York';
  String? langvage = 'English';

  final obj = FirebaseFirestore.instance.collection('users');

  String privacy =
      'https://doc-hosting.flycricket.io/progresshit/dade779a-a422-4fc7-9cdc-be55481319bf/privacy';
  String termsCondition =
      'https://doc-hosting.flycricket.io/progresshitapp/e763830c-14f1-40ac-9391-1bd991ce3347/terms';
  final List<String> states = [
    'New York',
    'Alabama',
    'Alaska',
    'Arizona',
    'Arkansas',
    'California',
    'Colorado',
    'Connecticut',
    'Delaware',
    'Florida',
    'Georgia',
    'Hawaii',
    'Idaho',
    'Illinois',
    'Indiana',
    'Iowa',
    'Kansas',
    'Kentucky',
    'Louisiana',
    'Maine',
    'Maryland',
    'Massachusetts',
    'Michigan',
    'Minnesota',
    'Mississippi',
    'Missouri',
    'Montana',
    'Nebraska',
    'Nevada',
    'New Hampshire',
    'New Jersey',
    'New Mexico',
    'North Carolina',
    'North Dakota',
    'Ohio',
    'Oklahoma',
    'Oregon',
    'Pennsylvania',
    'Rhode Island',
    'South Carolina',
    'South Dakota',
    'Tennessee',
    'Texas',
    'Utah',
    'Vermont',
    'Virginia',
    'Washington',
    'West Virginia',
    'Wisconsin',
    'Wyoming'
  ];

  String setgender = 'Female';
  bool checkbox = true;
  late SharedPreferences _prefs;
  @override
  void initState() {
    super.initState();
    _initSharedPreferences();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    double f = (h + w);

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: headline(w)),
        backgroundColor: background,
        centerTitle: true,
      ),
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: background,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              width: w,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                SizedBox(
                  height: h * 0.01,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                        icon: const FaIcon(FontAwesomeIcons.car),
                        onPressed: () {}),
                    IconButton(
                        // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                        icon: const Icon(Icons.directions_bike),
                        onPressed: () {})
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(h * 0.03),
                  child: Card(
                    color: white,
                    child: Padding(
                      padding: EdgeInsets.all(w * 0.05),
                      child: TextFormField(
                        style: const TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.black),
                        maxLength: 10, // Set the maximum length to 8 characte
                        controller: name,
                        decoration: InputDecoration(
                            hintText: 'Enter Name',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0))),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: w * 0.03,
                ),
                Text('Select your state', style: headline(w)),
                SizedBox(
                  height: h * 0.03,
                ),
                IntrinsicWidth(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.black),
                      color: white, // Change this to your desired color
                      borderRadius: BorderRadius.circular(
                          8.0), // Optional: Add border radius for a rounded look
                    ),
                    child: DropdownButton<String>(
                      iconSize: 30,
                      isExpanded: true,
                      focusColor: Colors.green,
                      value: selectedState,
                      hint: const Text('   Select a State'),
                      items: states.map((state) {
                        return DropdownMenuItem<String>(
                          value: state,
                          child: Text(
                            " $state",
                            style: GoogleFonts.abel(
                              textStyle: TextStyle(
                                fontSize: w * 0.05,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedState = value;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
              ]),
            ),
            Text('Select language', style: headline(w)),
            SizedBox(
              height: h * 0.03,
            ),
            IntrinsicWidth(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Colors.black),
                  color: white, // Change this to your desired color
                  borderRadius: BorderRadius.circular(
                      8.0), // Optional: Add border radius for a rounded look
                ),
                child: DropdownButton<String>(
                  iconSize: 30,
                  isExpanded: true,
                  focusColor: Colors.green,
                  value: langvage,
                  hint: const Text('English'),
                  items: [
                    DropdownMenuItem<String>(
                      value: 'English',
                      child: Text(
                        'English',
                        style: GoogleFonts.abel(
                          textStyle: TextStyle(
                            fontSize: w * 0.05,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Spanish',
                      child: Text(
                        'Spanish',
                        style: GoogleFonts.abel(
                          textStyle: TextStyle(
                            fontSize: w * 0.05,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      langvage = value;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.all(f * 0.01),
              color: Colors.white,
              child: Column(children: [
                Text('Accept', style: headline(w)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          _launchUrl(termsCondition);
                        },
                        child: Text('Terms & Condition',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 50, 6, 247),
                                fontSize: w * 0.04,
                                fontWeight: FontWeight.bold))),
                    Text(
                      '&',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 7, 7, 7),
                          fontSize: w * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: TextButton(
                          onPressed: () {
                            _launchUrl(privacy);
                          },
                          child: Text('privacy policy  ',
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 50, 6, 247),
                                  fontSize: w * 0.04,
                                  fontWeight: FontWeight.bold))),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(w * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          width: w * 0.2,
                          height: w * 0.1,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              'Exit',
                              style: TextStyle(
                                  fontSize: w * 0.05,
                                  fontWeight: FontWeight.w600,
                                  color: white),
                            ),
                          )),
                      InkWell(
                        onTap: () async {
                          try {
                            final List<ConnectivityResult> connectivityResult =
                                await (Connectivity().checkConnectivity());
                            if (connectivityResult
                                .contains(ConnectivityResult.none)) {
                              myToast(
                                  msg: 'No internet',
                                  color: Colors.red,
                                  textColor: Colors.white);
                            } else {
                              // Generate a random integer
                              String id = generateUserId();

                              if (name!.text.isEmpty) {
                                myToast(
                                    msg: 'Enter your name',
                                    color: Colors.white,
                                    textColor: black);
                              } else {
                                obj.doc(id).set({
                                  'id': id,
                                  'name': name?.text.trim() ?? 'Anonumous',
                                  'goal': 'success',
                                  'language': langvage ?? 'Englishh',
                                  'state': selectedState ?? 'New Yorks',
                                  'f1': '',
                                  'f2': '',
                                  'f3': '',
                                  'f4': '',
                                  'f5': '',
                                  'likes': 0,
                                  'online': false,
                                  'ranks': 0,
                                });
                                //   await PushNotigication().notification();
                                _prefs.setString(
                                    'Name',
                                    name?.text.replaceAll(' ', '').trim() ??
                                        'Anonumous');

                                _prefs.setBool('islogin', true);
                                _prefs.setString(
                                    'language', langvage ?? 'English');
                                _prefs.setString(
                                    'state', selectedState ?? 'New York');

                                // ignore: use_build_context_synchronously
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
                                  builder: (context) {
                                    return const HomeMainScreen();
                                  },
                                ));
                                // await PushNotigication().notification();
                              }
                            }
                          } catch (e) {
                            Fluttertoast.showToast(msg: 'something went wrong');
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.all(w * 0.018),
                          height: w * 0.1,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 93, 230, 97),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              'Accept & Login',
                              style: TextStyle(
                                  fontSize: w * 0.04,
                                  fontWeight: FontWeight.w600,
                                  color: white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }

  String generateUserId() {
    // final random = Random();
    final millisecondsSinceEpoch = DateTime.now().millisecondsSinceEpoch;
    // final randomPart = random.nextInt(100);

    String combined = '$millisecondsSinceEpoch';
    String userId = combined.length > 6
        ? combined.substring(5)
        : combined; // Remove the first 6 characters
    String nameText = name?.text.replaceAll(' ', '') ?? 'Anonumous';

    // Check if nameText length is sufficient before calling substring
    String nameSubstring =
        nameText.length > 5 ? nameText.substring(5) : nameText;
    return userId + nameSubstring.toUpperCase().trim();
  }

  Future<void> _initSharedPreferences() async {
    _prefs = await SharedPreferences.getInstance();
  }

  @override
  void dispose() {
    name?.dispose();

    super.dispose();
  }

  Future<void> _launchUrl(String link) async {
    if (!await launchUrl(Uri.parse(link))) {
      Fluttertoast.showToast(
          msg: "Could not launch",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      throw Exception('Could not launch ');
    }
  }
}
