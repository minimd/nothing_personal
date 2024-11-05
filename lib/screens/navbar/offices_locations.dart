import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rive_app/widgets/backButton.dart';
import 'package:rive_app/widgets/defaultStack.dart';
import 'package:rive_app/widgets/glassyContainer.dart';
import 'package:rive_app/widgets/glassyField.dart';

class OfficesLocations extends StatefulWidget {
  const OfficesLocations({super.key});

  @override
  State<OfficesLocations> createState() => _OfficesLocationsState();
}

class _OfficesLocationsState extends State<OfficesLocations> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Stack(
          children: [
            GoogleMap(
              zoomControlsEnabled: false,
              onMapCreated: (controller) {},
              initialCameraPosition: const CameraPosition(
                target: LatLng(33.3152, 44.3661),
                zoom: 11,
              ),
            ),
            Positioned(
              top: 54,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                      width: 54,
                    ),
                    glassyContainer(
                      blur: 12,
                      borderColor: const Color(0xff002F98),
                      height: 54,
                      width: 170,
                      child: Image.asset(
                        'assets/svg/logo.png',
                        width: 110,
                      ),
                    ),
                    const backButton(
                      borderColor: Color(0xff002F98),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: MediaQuery.of(context).size.width * 0.05,
              child: glassyContainer(
                height: 170,
                width: MediaQuery.of(context).size.width * 0.9,
                borderRadius: 24,
                borderColor: const Color(0xff002F98),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Row(
                        children: [
                          TextLama(
                            text: 'محطة شارع فلسطين',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              TextLama(
                                text: '07702564342',
                                color: Color(0xff002F98),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              TextLama(
                                text: '07702564342',
                                color: Color(0xff002F98),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/svg/Call_Ringing.svg',
                                width: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          glassyContainer(
                              height: 33,
                              fillColor: Colors.white,
                              width: 120,
                              borderColor: Color(0xff002F98),
                              stroke: 2,
                              borderRadius: 8,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(Icons.map),
                                    TextLama(
                                      text: "google maps",
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                    )
                                  ],
                                ),
                              )),
                          glassyContainer(
                              height: 33,
                              fillColor: Colors.white,
                              width: 120,
                              borderColor: Color(0xff002F98),
                              stroke: 2,
                              borderRadius: 8,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(Icons.map),
                                    TextLama(
                                      text: "waze",
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                    )
                                  ],
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
