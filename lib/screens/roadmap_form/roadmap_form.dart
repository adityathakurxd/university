import 'package:flutter/material.dart';

class RoadmapDetailsForm extends StatefulWidget {
  RoadmapDetailsForm({Key? key}) : super(key: key);

  @override
  _RoadmapDetailsFormState createState() => _RoadmapDetailsFormState();
}

class _RoadmapDetailsFormState extends State<RoadmapDetailsForm> with TickerProviderStateMixin {

  AnimationController? animation;
  Animation<double>? _fadeInFadeOut;

  TextEditingController _roadmapNameController = new TextEditingController();
  TextEditingController _descriptionController = new TextEditingController();
  TextEditingController _link1Controller = new TextEditingController();

  late List _formItems;

  late int _formIndex;

  @override
  void initState() {
    super.initState();

    // Each form will be represented using a List.
    // The first field is the title of the form.
    // The second field is the text shown on the button of the form.
    // The third one is a flag that says if we need to show 'Add More +' button or not
    // for that particular form.
    // The fourth field is the TextEditingController object for each form.
    _formItems = [
      ['Enter the Roadmap name','OK',0,_roadmapNameController],
      ['Enter the Description','OK',0,_descriptionController],
      ['Enter link - 1','Submit',1,_link1Controller],
    ];

    // Holds the index of the current form
    _formIndex = 0;

    animation = AnimationController(vsync: this, duration: Duration(milliseconds: 500),);
    _fadeInFadeOut = Tween<double>(begin: 0.0, end: 1.0).animate(animation!);

    animation!.addStatusListener((status){
      if(status == AnimationStatus.dismissed){
        animation!.forward();
      }
    });
    animation!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFEAC9),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "${_formIndex + 1}",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),
          ),
          SizedBox(width: 10,),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              animation!.reverse().whenComplete(() {
                if(_formIndex != 0) {
                  setState(() {
                    _formIndex--;
                  });
                }
              });

            },
            child: Container(
              height: 40,
              width: 40,
              color: Colors.black,
              child: Icon(Icons.arrow_drop_up,color: Colors.white,size: 30,),
            ),
          ),
          SizedBox(width: 5,),
          if(_formIndex != _formItems.length-1) GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              animation!.reverse().whenComplete(() {
                setState(() {
                  _formIndex++;
                });
              });
            },
            child: Container(
              height: 40,
              width: 40,
              color: Colors.black,
              child: Icon(Icons.arrow_drop_down,color: Colors.white,size: 30,),
            ),
          ),
          if(_formIndex != _formItems.length-1) SizedBox(width: 5,),
        ],
      ),
      body: FadeTransition(
        opacity: _fadeInFadeOut!,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _formItems[_formIndex][0],
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),

                TextFormField(
                  controller: _formItems[_formIndex][3],
                  decoration: InputDecoration(
                    hintText: "Enter your answer here...",
                  ),
                ),

                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        animation!.reverse().whenComplete(()  {
                          if(_formIndex == _formItems.length-1) {

                          } else {
                            setState(() {
                              _formIndex++;
                            });
                          }
                        });
                      },
                      behavior: HitTestBehavior.opaque,
                      child: Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.black
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  _formItems[_formIndex][1],
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Icon(Icons.done,color: Colors.white,size: 20,)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    if(_formItems[_formIndex][2] == 1) GestureDetector(
                      onTap: () {
                        animation!.reverse().whenComplete(()  {
                          setState(() {
                            String text = "Enter link - ${_formItems.length-1}";

                            // This field is set to 0 because we only have to show
                            // 'Add more +' button for the last form.
                            _formItems.last[2] = 0;
                            _formItems.last[1] = "OK";

                            // Appending a new form
                            _formItems.add([text,'Submit',1,new TextEditingController()]);

                            _formIndex++;

                          });
                        });
                      },
                      behavior: HitTestBehavior.opaque,
                      child: Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.black
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(width: 5,),
                                Text(
                                  "Add more",
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Icon(Icons.add,color: Colors.white,size: 20,)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}