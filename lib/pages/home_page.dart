import 'package:flutter/material.dart';
import 'package:goodbye_world_flutter/widgets/custom_dd_buttons.dart';

class HomePage extends StatelessWidget {
  late double _deviceWidth, _deviceHeight;

  // String _selectedDestination = 'Mars'; // Initial selected value
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Goodbye World'),
      ),
      body: SizedBox(
        height: _deviceHeight,
        width: _deviceWidth,
        child: _astroImageWidget(),
      ),
    );
  }

  Widget _pageTitleWidget() {
    return Container(
      margin: EdgeInsets.only(top: _deviceHeight * 0.2),
      child: const Text(
        '#GoodbyeWorld',
        style: TextStyle(
            fontSize: 50,
            color: Color.fromARGB(200, 0, 0, 0),
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto'),
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Gd4_Rm3XQAALR5y.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _pageTitleWidget(),
          _bookRideWidget(),
        ],
      ),
    );
  }

  Widget _bookRideWidget() {
    return SizedBox(
      height: _deviceHeight * 0.25,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _destinationDropdownWidget(),
            _travellingInfoWidget(),
            _bookRideButtonWidget(),
          ]),
    );
  }

  Widget _destinationDropdownWidget() {
    /*return Container(
      color: Colors.black.withOpacity(0.5),
      width: _deviceWidth * 0.9,
      alignment: Alignment.center,
      child: DropdownButton<String>(
        items: const <String>['Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune']
            .map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        value: _selectedDestination,
        dropdownColor: Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(color: Colors.white),
        onChanged: (String? newValue) {
          setState(() {
            _selectedDestination = newValue!;
          });
          print('Selected: $_selectedDestination');
        },
      ),
    );*/
    return CustomDropdownButtonClass(
        values: ['Mars', 'Jupiter', 'Saturn'], width: _deviceWidth * 0.99);
  }

  Widget _travellingInfoWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropdownButtonClass(
            values: ['1', '2', '3'], width: _deviceWidth * 0.49),
        CustomDropdownButtonClass(
            values: ['Economy', 'Business', 'First', 'Private'],
            width: _deviceWidth * 0.49),
      ],
    );
  }

  Widget _bookRideButtonWidget() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.05),
      width: _deviceWidth * 0.99,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text('Book Ride',
            style: TextStyle(fontSize: 20, color: Colors.black)),
      ),
    );
  }
}
