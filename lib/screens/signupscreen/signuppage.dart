import 'package:flutter/material.dart';
import 'package:jadeais/screens/loginscreen/loginpage.dart';

import '../../widgtes/phonenumberpicker.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(

      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height*0.18,),
                Text("স্বাগতম Jade Ai!",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                SizedBox(height: height*0.06,),
                Text("আপনার ফোন নম্বার",style: TextStyle(color: Color(0xffA5A3A3)),),
                SizedBox(height: height*0.02,),
                SizedBox(
                    height: height*0.07,
                    child: PhoneNumberPicker()),
                SizedBox(height: height*0.02,),
                Text("পাসওয়ার্ড লিখুন",style: const TextStyle(color: const Color(0xffA5A3A3)),),
                SizedBox(height: height*0.02,),
                Container(
                  height: height*0.07,

                  decoration: BoxDecoration(
                      color: const Color(0xffF6F6F6),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: TextField(

                    decoration: InputDecoration(
                        labelText: "পাসওয়ার্ড লিখুন",
                        contentPadding: const EdgeInsets.all(20.0),
                        border: InputBorder.none,
                        suffixIcon: IconButton(onPressed: (){},
                            icon: const Icon(Icons.remove_red_eye)
                        )
                    ),
                  ),
                ),
                SizedBox(height: height*0.02,),
                const Text("পাসওয়ার্ড ভুলে গেছেন?",style: TextStyle(color: Color(0xffA5A3A3)),),
                SizedBox(height: height*0.02,),
                SizedBox(
                    width: width,
                    child: ElevatedButton(onPressed: (){}, child: const Text("প্রবেশ করুন"))),
                SizedBox(height: height*0.02,),
                Row(
                  children: [
                    const Text("একাউন্ট আছে ?",style: TextStyle(color: Color(0xffA5A3A3)),),
                    const Spacer(),
                    InkWell(
                        onTap: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage()));
                        },
                        child: const Text("লগ ইন করুন!",style: TextStyle(color: Colors.teal),))
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
