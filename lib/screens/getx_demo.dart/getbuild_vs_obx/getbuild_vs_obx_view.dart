
import 'package:first_flutter_app/screens/getx_demo.dart/getbuild_vs_obx/getbuild_vs_obx_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetbuildVsObxPage extends StatelessWidget {
  final GetbuildVsObxController controller = Get.put(GetbuildVsObxController());

  GetbuildVsObxPage({super.key});

  @override
  Widget build(BuildContext context) {
    //print('🔄 Entire widget rebuild');
    return Scaffold(
      appBar: AppBar(title: Text('GetX - GetBuilder vs Obx')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 🔥 Obx - Changes whole widget whenever `count` changes
            Obx(() {
              print("🔄 Entire widget rebuilt due to Obx()");
              return Text('Count: ${controller.count}', style: TextStyle(fontSize: 30, color: Colors.blue));
            }),

            Obx((){
              print('🔄 Entire widget rebuild');
              return Text('Demo value: ${controller.demoValue}', style: TextStyle(fontSize: 30, color: Colors.blue));
            }),

            SizedBox(height: 20),

            // 🔥 GetBuilder - Updates only this section when `randomValue` changes
            GetBuilder<GetbuildVsObxController>(
              builder: (controller) {
                print("✅ Only this widget rebuilt due to GetBuilder()");
                return Text('Random Number: ${controller.randomValue}', style: TextStyle(fontSize: 30, color: Colors.green));
              },
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Button to update count (affects entire widget)
                ElevatedButton(
                  onPressed: controller.increment,
                  child: Text("Increment Count"),
                ),
                SizedBox(width: 10),

                // Button to update random number (affects only GetBuilder part)
                ElevatedButton(
                  onPressed: controller.generateRandomNumber,
                  child: Text("Generate Random"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
