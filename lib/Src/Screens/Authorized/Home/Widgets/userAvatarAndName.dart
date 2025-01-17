import 'package:alqgp/Src/Models/user_model.dart';
import 'package:alqgp/Src/Screens/Authorized/Users/topUsers.dart';
import 'package:alqgp/Src/Utils/Consts/consts.dart';
import 'package:alqgp/Src/Utils/Consts/text.dart';
import 'package:alqgp/Src/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PeerRankWithAvatarAndName extends StatelessWidget {
  const PeerRankWithAvatarAndName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(tHomeHeading2, style: Theme.of(context).textTheme.headline5),
            TextButton(
                onPressed: () => {Get.to(() => AllUsers())},
                child:
                    Text(tSeeAll, style: Theme.of(context).textTheme.headline5))
          ],
        ),
        const SizedBox(height: tDefaultPadding),

        //the avatar and name
        // ******** getx bulder for stream
        SizedBox(
          height: 100,
          child: Column(
            children: [
              Obx(
                () => controller.allUsers.length > 0
                    ? Expanded(
                        child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return const SizedBox(width: 12);
                            },
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.allUsers.length,
                            itemBuilder: (context, index) {
                              return Container(
                                // height: 100,
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          controller.allUsers[index].photo!),
                                      radius: 39,
                                    ),
                                    //break line
                                    Text(
                                        controller.allUsers[index].fullName!
                                            .split(" ")[0],
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge),
                                  ],
                                ),
                              );
                            }),
                      )
                    : Center(
                        child: Text("No achievements",
                            style: Theme.of(context).textTheme.headline3),
                      ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
