import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2_travel_app_design/color_constants.dart';
import 'package:project2_travel_app_design/main_screen.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({Key key}) : super(key: key);

  void _pageNavigation(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 500),
        transitionsBuilder: (context, animation, animationTime, child) {
          animation = CurvedAnimation(
            parent: animation,
            curve: Curves.ease,
          );
          return ScaleTransition(
            alignment: Alignment.center,
            scale: animation,
            child: child,
          );
        },
        pageBuilder: (context, animation, animationTime) {
          return MainScreen();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background_ing.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: size.height * 0.2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Discover The World',
                style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                    color: AppColors.primaryWhite),
              ),
              Text(
                'We are here to serve you',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryWhite,
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              GestureDetector(
                onTap: () => _pageNavigation(context),
                child: Container(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
