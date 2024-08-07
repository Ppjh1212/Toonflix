import 'package:Flutter_Study/webtoon_App/models/webtoon_model.dart';
import 'package:Flutter_Study/webtoon_App/service/api_Service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<WebtoonModel> webtoons = []; 
  bool isLoading = true;

  void waitForWebToons() async {
    webtoons = await ApiService().getTodaysToon();
    isLoading = false;
    setState(() {
       
    });
  }

  @override
  void initState() {
    super.initState();
    waitForWebToons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        elevation: 2, //음영
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Today's 툰s",
              style: TextStyle(
                fontSize: 24,
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
