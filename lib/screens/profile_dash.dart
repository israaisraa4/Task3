import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task3_ui/helpers/constants.dart';
import 'package:task3_ui/widgets/feedback_widget.dart';
import 'package:task3_ui/widgets/house_widget.dart';
import 'package:task3_ui/widgets/section_widget.dart';
import 'package:task3_ui/widgets/service_widget.dart';

class ProfileDash extends StatelessWidget {
  ProfileDash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        actionsPadding: EdgeInsets.only(right: 20),
        title: Text(
          'Profile',
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        actions: [
          InkWell(
            onTap: () => showMessgae(context, "Hello Reema!"),
            child: Image.asset('icons/menu.png', height: 20, width: 20),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppConstants.light_primary_color,
                        width: 10,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: InkWell(
                      child: Image.asset(
                        'icons/profile.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Adewale Taiwo', style: TextStyle(fontSize: 20)),
                      SizedBox(height: 8),
                      Text(
                        'House Manager',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppConstants.primaryColor,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 200,

                      margin: EdgeInsets.all(30),
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        color: AppConstants.light_primary_color,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        spacing: 10,
                        children: [
                          Text(
                            'Wallet Balance:',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            '\$5046.57',
                            style: AppConstants.primary_numbers_text_style,
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Total Service',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '24',
                            style: AppConstants.primary_numbers_text_style,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 200,
                      margin: EdgeInsets.all(30),
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        color: AppConstants.primaryColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        spacing: 20,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              'Master Card',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                              ),
                            ),
                          ),
                          Text(
                            '5999-XXXX',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Adewale T.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SectionWidget(title: 'Houses'),

              SizedBox(height: AppConstants.height),
              SingleChildScrollView(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      margin: EdgeInsets.only(right: 20),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      shadowColor: Colors.grey,
                      elevation: 5,

                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          spacing: 8,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: AppConstants.primaryColor,
                              child: AppConstants.addIcon,
                            ),

                            Text(
                              'Add\nWorker',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    HouseWidget(
                      house_name: 'Tobi Lateef',
                      house_manager_icon_path: 'profile.png',
                    ),
                    HouseWidget(
                      house_name: 'Israa Lubbad',
                      house_manager_icon_path: 'elec.png',
                    ),
                    HouseWidget(house_name: 'Omar Ahmed'),
                  ],
                ),
              ),
              SizedBox(height: AppConstants.height),

              SectionWidget(title: 'Services'),

              SizedBox(height: AppConstants.height),

              Column(
                spacing: 14,
                children: [
                  ServiceWidget(
                    icon: Image.asset('icons/head.png'),
                    title: 'Electrical',
                    description: 'Description',
                  ),
                  ServiceWidget(
                    icon: Image.asset('icons/head.png'),
                    title: 'Education',
                    description: 'lorem 123',
                  ),

                  ServiceWidget(
                    icon: Image.asset('icons/elec.png'),
                    title: 'Others',
                    description: 'Description',
                  ),
                ],
              ),
              SizedBox(height: AppConstants.height),

              SectionWidget(title: 'Feedback'),
              SizedBox(height: AppConstants.height),
              Column(
                spacing: 20,
                children: [
                  FeedbackWidget(
                    background_img: AssetImage("images/image1.jpg"), 
                    feedback_text: 'Perfect Work through all June month',
                    profile_img: 'profile.png',
                  ),
                  FeedbackWidget(
                    background_img: AssetImage("images/image2.jpg"), 
                    feedback_text: 'Perfect Work through all June month',
                    profile_img: 'profile.png',
                  ),
                  SizedBox(height: 20),
                ],
              ),

              SizedBox(height: AppConstants.height),
            ],
          ),
        ),
      ),
    );
  }
}