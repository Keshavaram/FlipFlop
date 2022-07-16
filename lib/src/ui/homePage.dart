import 'package:flipkart_flutter_ui/src/ui/widgets/Drawerfile.dart';
import 'package:flipkart_flutter_ui/src/ui/body.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Uri _url = Uri.parse("https://d3s1h21vy1aj1w.cloudfront.net/?token=95Pluq15QJPqVpld1Xn7fiG34RpXDTmYELaiHiZ5tBd4RCC2kRPVEGfF7hbY3hz19WWcWgO2OZQ2LwwNo4yoIrdQo8WqPUcAt1znCjd50LfO941aFHksQFOl4KoFllznd0Mj52KpBhBgTFNNLmCngF3Ke35l0uRF0jqvI0L5RtA9PlAOPx3wDIVANOR123BCr0iCkh4kWG1M8vrZ2E1hdPUM0mxJ7S4LO3eBjTttjVmfO53xC8gLFgB%2B2HKjZNpWB4HWbFaAD6ZUwWBiIPVSVD5bNZ88dBrOMmq%2Fph9oZfRPb7wFKHvf745Lyg%2BiO35osP2MAIUvHJ6OyUG7WNWObf7I7pz54IBUeMHoR9GSZfXSV3VFROOOb6E0oPEl71L3BfqfZvp1HqpuwMZWTKPkuhBIqEjbMmX2oN8X2o5j2xcYHeGhrShLkuDoBWq0Uu&pid=78342");

  void _launchUrl() async {
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Image.asset(
          'assets/flutter1.png',
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 4,
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {_launchUrl();}, // Image tapped
            child: Image.asset(
              'assets/social.png',
              width: 20.0,
              height: 20.0,
            ),
          ),
          Padding(padding: const EdgeInsets.only(right: 20),),
          Icon(
            Icons.notifications,
            size: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Icon(
              Icons.shopping_cart,
              size: 20,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Drawerfile(),
      ),
      body: Body(),
    );
  }
}
