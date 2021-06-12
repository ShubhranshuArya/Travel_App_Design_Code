import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2_travel_app_design/color_constants.dart';
import 'package:project2_travel_app_design/my_flutter_app_icons.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background_ing.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.064,
            vertical: size.height * 0.068,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: size.height * 0.068 / 2,
                    backgroundColor: AppColors.primaryWhite,
                    child: Center(
                      child: Icon(
                        AppIcons.menuIcon,
                        color: AppColors.primaryBlack,
                      ),
                    ),
                  ),
                  Container(
                    height: size.height * 0.068,
                    width: size.width * 0.4,
                    decoration: BoxDecoration(
                      color: AppColors.primaryWhite,
                      borderRadius:
                          BorderRadius.circular(size.height * 0.068 / 2),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.042),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Discover',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Icon(
                            AppIcons.searchIcon,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.29),
              Container(
                height: size.height * 0.11,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.destinationContainer.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.054),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Popular Destinations',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primaryWhite),
                          ),
                          Text(
                            'Collections of most popular\ndestinations for you',
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryWhite.withOpacity(0.7),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: size.height * 0.072,
                        width: size.width * 0.144,
                        decoration: BoxDecoration(
                          color: AppColors.primaryWhite,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            '10+',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.029),
              Container(
                height: size.height * 0.357,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.primaryWhite,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.039,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customContainer(
                        size.height * 0.074,
                        size.width * 0.66,
                        size.height * 0.02,
                        true,
                      ),
                      customContainer(
                        size.height * 0.074,
                        size.width * 0.66,
                        size.height * 0.02,
                        false,
                      ),
                      Divider(),
                      Container(
                        height: size.height * 0.066,
                        width: size.width * 0.6,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.primaryColor.withOpacity(0.25),
                                blurRadius: 14,
                                offset: Offset(0, 12))
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "See More",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryWhite,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget customContainer(
    double height,
    double width,
    double radius,
    bool first,
  ) {
    return Container(
      height: height,
      width: width,
      child: Row(
        children: [
          customItem(
            radius,
            first ? "Hotels" : "Concert",
            first ? AppColors.hotelColor : AppColors.musicColor,
            first ? AppIcons.hotelIcon : AppIcons.musicaIcon,
          ),
          customItem(
            radius,
            first ? "Car Rental" : "Rastaurants",
            first ? AppColors.carColor : AppColors.restauColor,
            first ? AppIcons.carIcon : AppIcons.restauIcon,
          ),
          customItem(
            radius,
            first ? "Flights" : "Forum",
            first ? AppColors.flightsColor : AppColors.primaryColor,
            first ? AppIcons.flightIcon : AppIcons.forumIcon,
          ),
        ],
      ),
    );
  }

  Widget customItem(
    double radius,
    String label,
    Color color,
    IconData itemIcon,
  ) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: radius,
              backgroundColor: color.withOpacity(0.2),
              child: Icon(
                itemIcon,
                size: 16,
                color: color,
              ),
            ),
            SizedBox(height: 4),
            Text(
              label,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryBlack,
              ),
            )
          ],
        ),
      ),
    );
  }
}
