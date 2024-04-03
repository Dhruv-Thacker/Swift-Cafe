import 'package:flutter/material.dart';

class CoffeeDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 450,
              height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/vc1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 26, top: 10),
              child: Text(
                'Lattè',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.2,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 26, top: 10, right: 26),
              child: Text(
                'Caffè latte is a milk coffee that is made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.2,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 26, top: 20),
              child: Text(
                'Choice of Cup Filling',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.2,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildOptionContainer(selected: true),
                _buildOptionContainer(),
                _buildOptionContainer(),
                _buildOptionContainer(),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 26, top: 20),
              child: Text(
                'Choice of Milk',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.2,
                ),
              ),
            ),
            const SizedBox(height: 10),
            _buildMilkOption('Option 1'),
            _buildMilkOption('Option 2'),
            _buildMilkOption('Option 3'),
            _buildMilkOption('Option 4'),
            _buildMilkOption('Option 5'),
            _buildMilkOption('Option 6'),
            _buildMilkOption('Option 7'),
            const Padding(
              padding: EdgeInsets.only(left: 26, top: 20),
              child: Text(
                'Choice of Sugar',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.2,
                ),
              ),
            ),
            const SizedBox(height: 10),
            _buildSugarOption('Option 1'),
            _buildSugarOption('Option 2'),
            _buildSugarOption('Option 3'),
            _buildSugarOption('Option 4'),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionContainer({bool selected = false}) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: selected ? Colors.green : Colors.white,
        border: Border.all(color: Colors.black),
      ),
    );
  }

  Widget _buildMilkOption(String optionName) {
    return MilkOptionWidget(optionName: optionName);
  }

  Widget _buildSugarOption(String optionName) {
    return SugarOptionWidget(optionName: optionName);
  }
}

class MilkOptionWidget extends StatefulWidget {
  final String optionName;

  const MilkOptionWidget({required this.optionName});

  @override
  _MilkOptionWidgetState createState() => _MilkOptionWidgetState();
}

class _MilkOptionWidgetState extends State<MilkOptionWidget> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(
          value: _value,
          onChanged: (bool value) {
            setState(() {
              _value = value;
            });
          },
        ),
        Text(widget.optionName),
      ],
    );
  }
}

class SugarOptionWidget extends StatefulWidget {
  final String optionName;

  const SugarOptionWidget({required this.optionName});

  @override
  _SugarOptionWidgetState createState() => _SugarOptionWidgetState();
}

class _SugarOptionWidgetState extends State<SugarOptionWidget> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(
          value: _value,
          onChanged: (bool value) {
            setState(() {
              _value = value;
            });
          },
        ),
        Text(widget.optionName),
      ],
    );
  }
}
