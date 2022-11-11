import 'package:doctor_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../logic/cubit_cubit.dart';
import 'FirstScreen.dart';


class SecondScreen extends StatelessWidget {

  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return BlocConsumer <AppCubit,AppState>(
      listener: (context,state){},
      builder: (context,state) {
        return Stack(
            children: [
              Container(
                color: MyColors.myGrey,
              ),
              Container(
                  height: 300,
                  decoration: const BoxDecoration(
                    color: MyColors.myBlue,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(left: 30, right: 30, top: 70),
                    child: Column(
                        children: [
                          Row(children: [
                            TextButton(onPressed: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (
                                      context) => const FirstScreen()));
                            },
                              child: const Icon(
                                Icons.arrow_back, size: 25, color: Colors
                                  .white,),
                            ),
                            const Expanded(child: SizedBox()),
                            const Icon(
                              Icons.add_alert, size: 25, color: Colors.white,),
                          ],
                          ),
                          const SizedBox(height: 20,),
                          Row(children: [
                            Image.asset('assets/image/image1.jpg', width: 100),
                            const SizedBox(width: 15,),
                            Container(
                              margin: const EdgeInsets.only(top: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Dr.Fred Mask', style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      decoration: TextDecoration.none),),
                                  const SizedBox(height: 20,),
                                  const Text('Heart Surgeon', style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      decoration: TextDecoration.none),),
                                  Image.asset(
                                    'assets/image/rate.png', height: 50,),
                                ],
                              ),
                            )
                          ],
                          ),
                        ]
                    ),
                  )
              ),
              Container(
                margin: const EdgeInsets.only(top: 280, left: 320),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Icon(
                  Icons.location_pin, size: 50, color: Colors.amber,),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, top: 340, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                        'October 2022', style: TextStyle(color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none)),
                    const SizedBox(height: 3,),
                    SizedBox(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: ListView.separated(
                          itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(4),
                                  child:  ElevatedButton(
                                    style:  ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(AppCubit.get(context).selectedIndex[index]==false?Colors.white:MyColors.myBrown,),
                                      shadowColor: MaterialStateProperty.all( MyColors.myBlue,),
                                    ),
                                      onPressed: (){
                                        AppCubit.get(context).dataClick(index);
                                      },
                                      child: Column  (
                                        children:  [
                                          const SizedBox(height: 15,),
                                          Text(DateFormat('EEE').format(AppCubit.get(context).daysInMonth[index]),style: const TextStyle(fontSize: 15, color:Colors.black,decoration: TextDecoration.none,fontWeight: FontWeight.bold),),
                                          const SizedBox(height: 15,),
                                          Text(AppCubit.get(context).daysInMonth[index].day.toString(),style: const TextStyle(fontSize: 15, color: Colors.black,decoration: TextDecoration.none,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                    ),
                                  ),

                          separatorBuilder: (context, index) => const SizedBox(width: 5,),
                          itemCount: AppCubit.get(context).selectedIndex.length,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              Container(
                margin: const EdgeInsets.only(left: 30, top: 465, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Morning', style: TextStyle(color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none)),
                    const SizedBox(height: 5,),
                    Column(
                    children: [
                          Row(
                            children: [
                              ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<
                                        Color>(MyColors.myWhite),
                                  ),
                                  onPressed: () {  },
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.access_alarm, color: Colors.black,
                                        size: 12,),
                                      SizedBox(width: 8,),
                                      Text('08:30 AM', style: TextStyle(
                                          color: Colors.black, fontSize: 12),)
                                    ],
                                  )
                              ),
                              const Expanded(child: SizedBox()),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<
                                        Color>(MyColors.myWhite),
                                  ),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.access_alarm, color: Colors.black,
                                        size: 12,),
                                      SizedBox(width: 8,),
                                      Text('09:00 AM', style: TextStyle(
                                          color: Colors.black, fontSize: 12),)
                                    ],
                                  )
                              ),
                              const Expanded(child: SizedBox()),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<
                                        Color>(MyColors.myWhite),
                                  ),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.access_alarm, color: Colors.black,
                                        size: 12,),
                                      SizedBox(width: 8,),
                                      Text('06:30 AM', style: TextStyle(
                                          color: Colors.black, fontSize: 12),)
                                    ],
                                  )
                              ),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          Row(
                            children: [
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<
                                        Color>(MyColors.myWhite),
                                  ),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.access_alarm, color: Colors.black,
                                        size: 12,),
                                      SizedBox(width: 8,),
                                      Text('10:00 AM', style: TextStyle(
                                          color: Colors.black, fontSize: 12),)
                                    ],
                                  )
                              ),
                              const Expanded(child: SizedBox()),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<
                                        Color>(MyColors.myWhite),
                                  ),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.access_alarm, color: Colors.black,
                                        size: 12,),
                                      SizedBox(width: 8,),
                                      Text('10:30 AM', style: TextStyle(
                                          color: Colors.black, fontSize: 12),)
                                    ],
                                  )
                              ),
                              const Expanded(child: SizedBox()),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<
                                        Color>(MyColors.myWhite),
                                  ),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.access_alarm, color: Colors.black,
                                        size: 12,),
                                      SizedBox(width: 8,),
                                      Text('11:00 AM', style: TextStyle(
                                          color: Colors.black, fontSize: 12),)
                                    ],
                                  )
                              ),
                            ],
                          ),
                        ])
                  ],
                ),
              ), //morning
              Container(
                margin: const EdgeInsets.only(left: 30, top: 600, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Evening', style: TextStyle(color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none)),
                    const SizedBox(height: 5,),
                    Column(
                        children: [
                          Row(
                            children: [
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<
                                        Color>(MyColors.myWhite),
                                  ),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.access_alarm, color: Colors.black,
                                        size: 12,),
                                      SizedBox(width: 8,),
                                      Text('05:30 PM', style: TextStyle(
                                          color: Colors.black, fontSize: 12),)
                                    ],
                                  )
                              ),
                              const Expanded(child: SizedBox()),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<
                                        Color>(MyColors.myWhite),
                                  ),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.access_alarm, color: Colors.black,
                                        size: 12,),
                                      SizedBox(width: 8,),
                                      Text('06:00 PM', style: TextStyle(
                                          color: Colors.black, fontSize: 12),)
                                    ],
                                  )
                              ),
                              const Expanded(child: SizedBox()),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<
                                        Color>(MyColors.myWhite),
                                  ),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.access_alarm, color: Colors.black,
                                        size: 12,),
                                      SizedBox(width: 8,),
                                      Text('06:30 PM', style: TextStyle(
                                          color: Colors.black, fontSize: 12),)
                                    ],
                                  )
                              ),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          Row(
                            children: [
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<
                                        Color>(MyColors.myWhite),
                                  ),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.access_alarm, color: Colors.black,
                                        size: 12,),
                                      SizedBox(width: 8,),
                                      Text('10:00 PM', style: TextStyle(
                                          color: Colors.black, fontSize: 12),)
                                    ],
                                  )
                              ),
                              const Expanded(child: SizedBox()),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<
                                        Color>(MyColors.myWhite),
                                  ),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.access_alarm, color: Colors.black,
                                        size: 12,),
                                      SizedBox(width: 8,),
                                      Text('10:30 PM', style: TextStyle(
                                          color: Colors.black, fontSize: 12),)
                                    ],
                                  )
                              ),
                              const Expanded(child: SizedBox()),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<
                                        Color>(MyColors.myWhite),
                                  ),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.access_alarm, color: Colors.black,
                                        size: 12,),
                                      SizedBox(width: 8,),
                                      Text('11:00 PM', style: TextStyle(
                                          color: Colors.black, fontSize: 12),)
                                    ],
                                  )
                              ),
                            ],
                          ),
                        ])
                  ],
                ),
              ), // evening
              Container(
                height: 70,
                margin: const EdgeInsets.only(right: 30, left: 30, top: 750),
                child: Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            MyColors.myBrown),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Make An Appointment',
                            style: TextStyle(
                              color: Colors.white, fontSize: 25,),)
                        ],
                      )
                  ),
                ),
              ),
            ]
        );
       }
     );
  }
}
