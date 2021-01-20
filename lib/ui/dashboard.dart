
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Flexible(
      flex: 1,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(7),
            child: Card(
              elevation: 4,
              color: Colors.yellow[50],
              child: Column(
                children: [
                  //SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: SizedBox(
                            height: 50,
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/vesatogofleet.appspot.com/o/androidTaskApp%2Fbanana.png?alt=media&token=77d836a0-7bda-439b-94d1-a022b9781949',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('12 oct \'20'),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('Stock information',style: TextStyle(color: Colors.amber,fontWeight: FontWeight.w700),),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                      color: Colors.black26
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          const SizedBox(height: 10,),
                          Text('150',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                          const SizedBox(height: 10,),
                          Text('Total Stock',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700,color: Colors.black54), ),
                          const SizedBox(height: 10,),
                        ],
                      ),
                      Column(
                        children: [
                          const SizedBox(height: 10,),
                          Text('12,000',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700,color: Colors.amber),),
                          const SizedBox(height: 10,),
                          Text('Stock information',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700,color: Colors.black54), ),
                          const SizedBox(height: 10,),
                        ],
                      ),
                      Column(
                        children: [
                          const SizedBox(height: 10,),
                          Text('150',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                          const SizedBox(height: 10,),
                          Text('Total Stock',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700,color: Colors.black54), ),
                          const SizedBox(height: 10,),
                        ],
                      ),

                    ],
                  )
                ],
              ),
            ),
          );
        },

      ),
    );
  }
}
