import 'dart:math';

import 'package:flutter/material.dart';

import 'Bmi_Resuit-Screen.dart';
class BmiCalcltor extends StatefulWidget
{



  @override
  _BmiCalcltorState createState() => _BmiCalcltorState();
}

class _BmiCalcltorState extends State<BmiCalcltor> {
  bool ismale = true ;
  double slider = 120.0 ;
  int weight = 60 ;
  int Age = 20 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Bmi Calculator' ,

        ),
      ),
      body:Container(
        color: Colors.black,
        child: Column(
          children:
          [
            Expanded(
             child: Padding(
               padding: const EdgeInsets.all(20.0),
               child: Row(
                 children:
                 [
                   Expanded(
                     child: GestureDetector(
                       onTap: ()
                       {
                         setState(() {
                           ismale = true ;
                         });
                       },
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20.0),
                           color: ismale ? Colors.amber : Colors.grey[400],
                         ),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children:
                           const [
                              Image(
                                image: AssetImage('assess/images/male.png'),
                                width: 90,
                                height: 90,
                              ),
                             Text(
                               'Male',
                               style: TextStyle(
                                 fontSize: 30.0 ,

                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                   ),
                   const SizedBox(
                     width: 20.0,
                   ),
                   Expanded(
                     child: GestureDetector(
                       onTap:()
                       {
                        setState(() {
                          ismale = false ;
                        });
                       },
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20.0),
                           color: ismale ? Colors.grey[400] : Colors.amber,
                         ),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children:
                           const [
                             Image(image:
                             AssetImage('assess/images/female.png'),
                               width: 90,
                               height: 90,
                             ),
                             Text(
                               'Female',
                               style: TextStyle(
                                 fontSize: 30.0 ,

                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
             ),
           ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey[400],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      const Text(
                        'Height',
                        style: TextStyle(
                          fontSize: 30.0 ,
                          fontWeight: FontWeight.w900 ,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children:
                        [
                          Text(
                            '${slider.round()}' ,
                            style: const TextStyle(
                              fontSize: 40.0 ,
                              fontWeight: FontWeight.w700 ,
                            ),
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          const Text(
                            'cm' ,
                            style: TextStyle(
                              fontSize: 20.0 ,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        inactiveColor : Colors.black ,
                        activeColor: Colors.amber,
                          value: slider,
                          max: 220.0,
                          min: 80.0,
                          onChanged: (value)
                          {
                            setState(() {
                              slider = value ;
                            });


                          },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child:Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20.0),
                           color: Colors.grey[400], ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            const Text(
                              'weight',
                              style: TextStyle(
                                fontSize: 30.0 ,
                                fontWeight: FontWeight.w900 ,
                              ),
                            ),
                            Text(
                              '$weight' ,
                              style: const TextStyle(
                                fontSize: 40.0 ,
                                fontWeight: FontWeight.w700 ,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                FloatingActionButton(onPressed: ()
                                {
                                  setState(() {
                                    weight--;
                                  });
                                } ,
                                  heroTag:'weight-',
                                  backgroundColor: Colors.amber[300],
                                  mini: true,
                                child: const Icon(
                                  Icons.remove ,
                                ),),
                                FloatingActionButton(onPressed: ()
                                {
                                 setState(() {
                                   weight++;
                                 });
                                } ,
                                  heroTag:'weight+',
                                  backgroundColor: Colors.amber[300],
                                  mini: true,
                                  child: const Icon(
                                    Icons.add ,

                                  ),),
                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey[400], ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            const Text(
                              'Age',
                              style: TextStyle(
                                fontSize: 30.0 ,
                                fontWeight: FontWeight.w900 ,
                              ),
                            ),
                            Text(
                              '$Age' ,
                              style: const TextStyle(
                                fontSize: 40.0 ,
                                fontWeight: FontWeight.w700 ,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                FloatingActionButton(onPressed: ()
                                {
                                  setState(() {
                                    Age-- ;
                                  });
                                } ,
                                  heroTag: 'Age_',
                                  backgroundColor: Colors.amber[300],
                                  mini: true,
                                  child: const Icon(
                                    Icons.remove ,
                                  ),),
                                FloatingActionButton(onPressed: ()
                                {
                                  setState(() {
                                    Age++;
                                  });
                                } ,
                                  heroTag: 'Age+',
                                  backgroundColor: Colors.amber[300],
                                  mini: true,
                                  child: const Icon(
                                    Icons.add ,
                                  ),),
                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.amber
              ),
              width: double.infinity,
              height: 50.0 ,
              child: MaterialButton(onPressed: ()
              {
                double result = weight /pow(slider/100, 2);
                print(result.round()) ;
                Navigator.push(context, MaterialPageRoute(builder: (context) => Bmi_Result(
                  ismale: ismale,
                  Age: Age,
                  result:result.round(),
                )),
                );
              },
                child: const Text(
                  'Bmi Calculator' ,
                  style: TextStyle(
                    fontSize: 20.0 ,

                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0,),
          ],
        ),
      ),

    );
  }
}
