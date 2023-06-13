import 'package:flutter/material.dart';
import 'package:rooheman/utilities/responsive.dart';
import 'package:rooheman/widgets/detail_view.dart';
import 'package:rooheman/view_models/client_view_model.dart';

class CustomCard extends StatelessWidget {
  final ClientViewModel data;
  const CustomCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = Responsive.returnValueAccordingToMobileScreens(context,
        mobileSmallScreen: 150,
        mobileMediumScreen: 150,
        mobileLargeScreen: 150,
        tablet: 200);
    double width = Responsive.returnValueAccordingToMobileScreens(context,
        mobileSmallScreen: 150,
        mobileMediumScreen: 180,
        mobileLargeScreen: 200,
        tablet: 250);
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailView(
              data: data,
            ),
          ),
        );
      },
      child: SizedBox(
        height: height,
        width: width,
        child: Card(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
            side: const BorderSide(
              color: Colors.white,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5), // Image border
                child: SizedBox(
                  height: Responsive.isTablet(context) ? 150 : 100,
                  child: Image.network(data.personalInformation.images,
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          data.personalInformation.name,
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Age: ",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "${data.personalInformation.age}",
                              style: const TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: Responsive.isMobileLargeScreen(context) ||
                              Responsive.isTablet(context)
                          ? 2
                          : 0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Height: ",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "${data.personalInformation.height}",
                              style: const TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Cast: ",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              data.religionDetails.caste,
                              style: const TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
