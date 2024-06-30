import 'package:explore_uganda/components/constants/constants.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool _isSwitched = false;

  void _toggleSwitch(bool value) {
    setState(() {
      _isSwitched = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: bpadding,
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Textfieldcolor,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30))
                ),
              
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    
                    Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.arrow_back_ios_new_outlined))
                        ],
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, bottom: 10, left: 20),
                      child: Text('Notifications', style: subheadings,),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: bpadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Common', style: subtitle,),
                    SizedBox(height: 10,),
                    SwitchListTile(
                      title: Text('General Notification'),
                      value: _isSwitched,
                      onChanged: _toggleSwitch,
                      activeColor: Colors.white, // Thumb color when the switch is on
                      activeTrackColor: appcolor, // Track color when the switch is on
                      inactiveThumbColor: Colors.white, // Thumb color when the switch is off
                      inactiveTrackColor: unselectedTileColor, // Track color when the switch is off
                      contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      trackOutlineColor: WidgetStateColor.transparent,
                    ),

                    SwitchListTile(
                      title: Text('Sound'),
                      value: _isSwitched,
                      onChanged: _toggleSwitch,
                      activeColor: Colors.white, // Thumb color when the switch is on
                      activeTrackColor: appcolor, // Track color when the switch is on
                      inactiveThumbColor: Colors.white, // Thumb color when the switch is off
                      inactiveTrackColor: unselectedTileColor, // Track color when the switch is off
                      contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      trackOutlineColor: WidgetStateColor.transparent,
                    ),

                    SwitchListTile(
                      title: Text('Vibrate'),
                      value: _isSwitched,
                      onChanged: _toggleSwitch,
                      activeColor: Colors.white, // Thumb color when the switch is on
                      activeTrackColor: appcolor, // Track color when the switch is on
                      inactiveThumbColor: Colors.white, // Thumb color when the switch is off
                      inactiveTrackColor: unselectedTileColor, // Track color when the switch is off
                      contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      trackOutlineColor: WidgetStateColor.transparent,
                    ),

                    Divider(),

                    SizedBox(height: 10,),

                    Text('System & Services Update', style: subtitle,),
                    SizedBox(height: 10,),
                    SwitchListTile(
                      title: Text('App updates'),
                      value: _isSwitched,
                      onChanged: _toggleSwitch,
                      activeColor: Colors.white, // Thumb color when the switch is on
                      activeTrackColor: appcolor, // Track color when the switch is on
                      inactiveThumbColor: Colors.white, // Thumb color when the switch is off
                      inactiveTrackColor: unselectedTileColor, // Track color when the switch is off
                      contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      trackOutlineColor: WidgetStateColor.transparent,
                    ),

                    SwitchListTile(
                      title: Text('Bill Reminder'),
                      value: _isSwitched,
                      onChanged: _toggleSwitch,
                      activeColor: Colors.white, // Thumb color when the switch is on
                      activeTrackColor: appcolor, // Track color when the switch is on
                      inactiveThumbColor: Colors.white, // Thumb color when the switch is off
                      inactiveTrackColor: unselectedTileColor, // Track color when the switch is off
                      contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      trackOutlineColor: WidgetStateColor.transparent,
                    ),

                    SwitchListTile(
                      title: Text('Deals'),
                      value: _isSwitched,
                      onChanged: _toggleSwitch,
                      activeColor: Colors.white, // Thumb color when the switch is on
                      activeTrackColor: appcolor, // Track color when the switch is on
                      inactiveThumbColor: Colors.white, // Thumb color when the switch is off
                      inactiveTrackColor: unselectedTileColor, // Track color when the switch is off
                      contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      trackOutlineColor: WidgetStateColor.transparent,
                    ),

                    SwitchListTile(
                      title: Text('Discount Available'),
                      value: _isSwitched,
                      onChanged: _toggleSwitch,
                      activeColor: Colors.white, // Thumb color when the switch is on
                      activeTrackColor: appcolor, // Track color when the switch is on
                      inactiveThumbColor: Colors.white, // Thumb color when the switch is off
                      inactiveTrackColor: unselectedTileColor, // Track color when the switch is off
                      contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      trackOutlineColor: WidgetStateColor.transparent,
                    ),

                    SwitchListTile(
                      title: Text('Payment Request'),
                      value: _isSwitched,
                      onChanged: _toggleSwitch,
                      activeColor: Colors.white, // Thumb color when the switch is on
                      activeTrackColor: appcolor, // Track color when the switch is on
                      inactiveThumbColor: Colors.white, // Thumb color when the switch is off
                      inactiveTrackColor: unselectedTileColor, // Track color when the switch is off
                      contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      trackOutlineColor: WidgetStateColor.transparent,
                    ),

                    Divider(),

                    SizedBox(height: 10,),

                    Text('Others', style: subtitle,),
                    SizedBox(height: 10,),
                    SwitchListTile(
                      title: Text('New Service Available'),
                      value: _isSwitched,
                      onChanged: _toggleSwitch,
                      activeColor: Colors.white, // Thumb color when the switch is on
                      activeTrackColor: appcolor, // Track color when the switch is on
                      inactiveThumbColor: Colors.white, // Thumb color when the switch is off
                      inactiveTrackColor: unselectedTileColor, // Track color when the switch is off
                      contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      trackOutlineColor: WidgetStateColor.transparent,
                    ),

                    SwitchListTile(
                      title: Text('New Tips Available'),
                      value: _isSwitched,
                      onChanged: _toggleSwitch,
                      activeColor: Colors.white, // Thumb color when the switch is on
                      activeTrackColor: appcolor, // Track color when the switch is on
                      inactiveThumbColor: Colors.white, // Thumb color when the switch is off
                      inactiveTrackColor: unselectedTileColor, // Track color when the switch is off
                      contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      trackOutlineColor: WidgetStateColor.transparent,
                    ),

                  ],
                ),
              ),
              


            ],
          ),
        ),
      ),
    );
  }
}