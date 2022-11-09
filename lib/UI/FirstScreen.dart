import 'package:doctor_app/UI/SecondScreen.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

Widget firstDoctorList() {
  return  TextButton(
    onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SecondScreen()));
    },
    child: Container(
            decoration: const BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.all(Radius.circular(5),
              ),
            ),
            margin: const EdgeInsets.only(right: 30, left: 30),
            padding: const EdgeInsets.all(10),
            child: Row(
                children: [
                  Image.asset('assets/image/image1.jpg', width: 60,),
                  const SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Dr.Fred Mask', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),),
                      const SizedBox(height: 15,),
                      Text('Heart Specialist', style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 11,
                          fontWeight: FontWeight.w500),)
                    ],
                  ),
                  const SizedBox(width: 20,),
                  Container(
                      margin: const EdgeInsets.only(top: 32),
                      child: Row(
                          children: [
                            TextButton.icon(
                              onPressed: () => {},
                              icon: const Icon(Icons.star, color: Colors.amber, size: 15,),
                              label: const Text('4.9', style: TextStyle(color: Colors.grey, fontSize: 11),),
                            ),
                            TextButton.icon(
                              onPressed: () => {},
                              icon: const Icon(
                                Icons.location_pin, color: Colors.amber, size: 15,),
                              label: const Text('5.3 Km',
                                style: TextStyle(color: Colors.grey, fontSize: 11),),
                            ),
                          ]
                      )
                  ),
                ]
            ),
    ),
  );
}
Widget secondDoctorList() {
  return TextButton(
    onPressed: (){},
    child: Container(
        height: 90,
        decoration: const BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.all(Radius.circular(5),
          ),
        ),
        margin: const EdgeInsets.only(right: 30, left: 30),
        padding: const EdgeInsets.all(10),
        child: Row(
            children: [
              Image.asset('assets/image/image2.jpg', width: 60,),
              const SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Dr.Stella Kane', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),),
                  const SizedBox(height: 15,),
                  Text('Bone Specialist', style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 11,
                      fontWeight: FontWeight.w500),)
                ],
              ),
              const SizedBox(width: 20,),
              Container(
                  margin: const EdgeInsets.only(top: 32),
                  child: Row(
                      children: [
                        TextButton.icon(
                          onPressed: () => {},
                          icon: const Icon(Icons.star, color: Colors.amber, size: 15,),
                          label: const Text('4.7', style: TextStyle(color: Colors.grey, fontSize: 11),),
                        ),
                        TextButton.icon(
                          onPressed: () => {},
                          icon: const Icon(
                            Icons.location_pin, color: Colors.amber, size: 15,),
                          label: const Text('3.1 Km',
                            style: TextStyle(color: Colors.grey, fontSize: 11),),
                        ),
                      ]
                  )
              ),
            ]
        )
    ),
  );
}
Widget thirdDoctorList() {
  return TextButton(
    onPressed: (){},
    child: Container(
        height: 90,
        decoration: const BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.all(Radius.circular(5),
          ),
        ),
        margin: const EdgeInsets.only(right: 30, left: 30),
        padding: const EdgeInsets.all(10),
        child: Row(
            children: [
              Image.asset('assets/image/image3.jpg', width: 60,),
              const SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Dr.Zac Wolff', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),),
                  const SizedBox(height: 15,),
                  Text('Eyes Specialist', style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 11,
                      fontWeight: FontWeight.w500),)
                ],
              ),
              const SizedBox(width: 20,),
              Container(
                  margin: const EdgeInsets.only(top: 32),
                  child: Row(
                      children: [
                        TextButton.icon(
                          onPressed: () => {},
                          icon: const Icon(Icons.star, color: Colors.amber, size: 15,),
                          label: const Text('4.5', style: TextStyle(color: Colors.grey, fontSize: 11),),
                        ),
                        TextButton.icon(
                          onPressed: () => {},
                          icon: const Icon(
                            Icons.location_pin, color: Colors.amber, size: 15,),
                          label: const Text('4.6 Km',
                            style: TextStyle(color: Colors.grey, fontSize: 11),),
                        ),
                      ]
                  )
              ),
            ]
        )
    ),
  );
}

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            color: MyColors.myBlue,
          ),
          Container(
            margin: const EdgeInsets.only(top: 60, left: 30, right: 25),
            child: Row(
              children: [
                const Icon(Icons.list, color: Colors.white, size: 30,),
                const Expanded(child: SizedBox()),
                const Icon(Icons.add_alert_sharp, color: Colors.white, size: 25,),
                const SizedBox(width: 15,),
                Image.asset('assets/image/image2.jpg', width: 30, height: 30,),
              ],
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 100),
              decoration: const BoxDecoration(
                color: MyColors.myGrey,
                borderRadius: BorderRadius.only(topRight: Radius.circular(30),
                  topLeft: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 30),
                    child: const Text(
                      "Hi,Habiba", style: TextStyle(fontSize: 17),),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    margin: const EdgeInsets.only(left: 30),
                    child: const Text("Welcome Back", style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),),
                  ),
                  const SizedBox(height: 25,),
                  Container(
                    margin: const EdgeInsets.only(left: 30,right:30 ),
                    child: TextFormField(
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        cursorHeight: 30,
                        decoration: InputDecoration(
                     filled: true,
                     fillColor: Colors.white,
                     labelStyle:  TextStyle(color: Colors.grey.shade600),
                     contentPadding: const EdgeInsets.only(left:20),
                     labelText: "Search ... ",
                     border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                ),
                     suffixIcon: Container(
                       decoration: const BoxDecoration(
                         color: MyColors.myBrown,
                         borderRadius: BorderRadius.all(Radius.circular(10)  ),),
                       child: const Icon(Icons.search,color: Colors.white,),
                      )
                   )
                 ),
                  ),
                  const SizedBox(height: 40,),
                  Container(
                    margin: const EdgeInsets.only(left: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text('Category', style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold)),
                        const Expanded(child: SizedBox()),
                        Container(
                          margin: const EdgeInsets.only(right: 30),
                          child: const Text(
                              'All See', style: TextStyle(fontSize: 15)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: MyColors.myBrown,
                                borderRadius: BorderRadius.all(Radius.circular(
                                    10))),
                            width: 90,
                            height: 120,
                            margin: const EdgeInsets.only(left: 30),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  child: Image.asset(
                                    'assets/image/teeth.png', width: 30,),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: const Text('Dental', style: TextStyle(
                                      color: MyColors.myWhite,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  child: const Text('26 Doctors',
                                    style: TextStyle(color: MyColors.myWhite,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 8),),
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                color: MyColors.myBrown,
                                borderRadius: BorderRadius.all(Radius.circular(
                                    10))),
                            width: 90,
                            height: 120,
                            margin: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  child: Image.asset(
                                    'assets/image/heart.png', width: 30,),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: const Text('Heart', style: TextStyle(
                                      color: MyColors.myWhite,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  // margin: EdgeInsets.only(top: 10),
                                  child: const Text('16 Doctors',
                                    style: TextStyle(color: MyColors.myWhite,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 8),),
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                color: MyColors.myBrown,
                                borderRadius: BorderRadius.all(Radius.circular(
                                    10))),
                            width: 90,
                            height: 120,
                            margin: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  child: Image.asset(
                                    'assets/image/brain.png', width: 30,),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: const Text('Brain', style: TextStyle(
                                      color: MyColors.myWhite,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  // margin: EdgeInsets.only(top: 10),
                                  child: const Text('32 Doctors',
                                    style: TextStyle(color: MyColors.myWhite,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 8),),
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                color: MyColors.myBrown,
                                borderRadius: BorderRadius.all(Radius.circular(
                                    10))),
                            width: 90,
                            height: 120,
                            margin: const EdgeInsets.only(right: 30, left: 20),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 30),
                                  child: Image.asset(
                                    'assets/image/eye.png', width: 30,),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 2),
                                  child: const Text('Eyes', style: TextStyle(
                                      color: MyColors.myWhite,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  child: const Text('10 Doctors',
                                    style: TextStyle(color: MyColors.myWhite,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 8),),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    margin: const EdgeInsets.only(left: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text('Top Rate', style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold)),
                        const Expanded(child: SizedBox()),
                        Container(
                          margin: const EdgeInsets.only(right: 30),
                          child: const Text(
                              'All See', style: TextStyle(fontSize: 15)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: 100 ,
                    child: firstDoctorList()
                  ),
                  const SizedBox(height: 10,),
                  SizedBox(
                    height: 100 ,
                    child: secondDoctorList()
                  ),
                  const SizedBox(height: 10,),
                  SizedBox(
                    height: 100 ,
                    child: thirdDoctorList()
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}
