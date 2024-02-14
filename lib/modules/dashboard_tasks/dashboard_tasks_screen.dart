import 'package:flutter/material.dart';
import 'package:untitled6/modules/dashboard_tasks/Model/ButtonData.dart';
import 'package:untitled6/modules/dashboard_tasks/Widgets/CardWidget.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late List<ButtonData> buttons = [
    ButtonData(
        id: 1,
        icon: Icons.device_thermostat,
        toggleButtonOnPress: onTemperaturePressTogglePress,
        title: "Temperature",
        valuePostFix: "C",
        valuePerFix: "25"),

    ButtonData(
        id: 2,
        icon: Icons.cloud,
        toggleButtonOnPress: onHumidityPressTogglePress,
        title: "Humidity",
        valuePostFix: "%",
        valuePerFix: "75"),

    ButtonData(
        id: 3,
        icon: Icons.sunny,
        toggleButtonOnPress: onHumidityPressTogglePress,
        title: "Lighting",
        valuePostFix: "%",
        valuePerFix: "75"),

    ButtonData(
        id: 4,
        icon: Icons.solar_power,
        toggleButtonOnPress: onHumidityPressTogglePress,
        title: "Solar Panel",
        valuePostFix: "",
        valuePerFix: ""),

    ButtonData(
        id: 5,
        icon: Icons.water_drop_outlined,
        toggleButtonOnPress: onHumidityPressTogglePress,
        title: "Water Level",
        valuePostFix: "",
        valuePerFix: "3"),

    ButtonData(
        id: 6,
        icon: Icons.camera_alt_rounded,
        toggleButtonOnPress: onHumidityPressTogglePress,
        title: "Security Camera",
        valuePostFix: "",
        valuePerFix: ""),


  ];

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2 ,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 1
              ),
              itemBuilder: (context, index) => CardWidget(buttonData: buttons[index]),
              itemCount: buttons.length,
            ),
          ),
        ),
      ],
    );
  }

  void onTemperaturePressTogglePress(int id){
    changeSwitchState(id);
    // todo to be impl
  }

  void onHumidityPressTogglePress(int id){
    changeSwitchState(id);
    // todo to be impl
  }

  void onLightingPressTogglePress(int id){
    changeSwitchState(id);
    // todo to be impl
  }

  void onSolarPanelPressTogglePress(int id){
    changeSwitchState(id);
    // todo to be impl
  }

  void onWaterLevelPressTogglePress(int id){
    changeSwitchState(id);
    // todo to be impl
  }

  void onSecurityCameraPressTogglePress(int id){
    changeSwitchState(id);
    // todo to be impl
  }

  void changeSwitchState(int id){
    for(int i = 0; i<buttons.length ; i++){
      if(buttons[i].id == id){
        buttons[i].isSelected = !buttons[i].isSelected;
      }
    }
    setState(() {});
  }
}
