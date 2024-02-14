import 'package:flutter/material.dart';
import 'package:untitled6/modules/dashboard_tasks/Model/ButtonData.dart';

class CardWidget extends StatelessWidget {
  ButtonData buttonData;

  CardWidget({required this.buttonData, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: buttonData.isSelected
            ? Border.all(width: 2, color: Colors.transparent)
            : Border.all(width: 2, color: Color(0xff267A72).withOpacity(0.3)),
        gradient: buttonData.isSelected
            ? LinearGradient(colors: [
                Color(0xff248176).withOpacity(0.3),
                Color(0xffCEDCA0).withOpacity(0.3)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)
            : LinearGradient(colors: [Colors.transparent, Colors.transparent]),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                buttonData.icon,
                color: Colors.black87,
                size: 35,
              ),
              Switch(
                value: buttonData.isSelected,
                onChanged: (value) {
                  buttonData.toggleButtonOnPress(buttonData.id);
                },
                activeColor: Colors.white,
                activeTrackColor: Color(0xff134742),
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: Color(0xff969696),
                trackOutlineWidth: MaterialStateProperty.all(0),
              )
            ],
          ),
          Text(
            buttonData.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            "${buttonData.valuePerFix} ${buttonData.valuePostFix} ",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
          )
        ],
      ),
    );
  }
}
