

import 'dart:convert';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:share_plus/share_plus.dart';
import 'package:http/http.dart' as http;

import '../models/shorts_model.dart';
import '../widgets/shorts_player_widget.dart';

class ShortsMainScreen extends StatefulWidget {
  const ShortsMainScreen({super.key});

  @override
  State<ShortsMainScreen> createState() => _ShortsMainScreenState();
}

class _ShortsMainScreenState extends State<ShortsMainScreen> {

  ShortsModel shortsModel = ShortsModel();

  Future<void> getShortsData() async {

    List<String> apiTokens = [
      "27d4946c69msh2db74aa752806f4p1d29fdjsn91bf65bb156d",
      "7106b0390dmsh2b4822ccabc149ep1b1f09jsnf498df461c53",
      "dec315c67amsh60c37229a43a6f9p1a7e04jsnb5d925e4887b"
    ];
    Random random = Random();
    int randomIndex = random.nextInt(apiTokens.length);

    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'X-RapidAPI-Key': apiTokens[randomIndex],
      'X-RapidAPI-Host': 'tiktok-private1.p.rapidapi.com'
    };

    final response = await http.get(Uri.parse('https://tiktok-private1.p.rapidapi.com/creator/recommend'), headers: requestHeaders);
    var responseData = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      if (kDebugMode) {
        print(ShortsModel.fromJson(responseData));
      }
      setState(() {
        shortsModel = ShortsModel.fromJson(responseData);
      });
    } else {
      throw Exception('Failed to load');
    }
  }



  @override
  void initState() {
    getShortsData();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: (shortsModel.awemeList?.length == 0 || shortsModel.awemeList == null) ?
        const Center(
          child: SpinKitSpinningLines(
            color: Colors.greenAccent,
            size: 200,
            lineWidth: 3,
          ),
        )
            :
        PageView.builder(
          //to make the whole page scrollable
          itemCount: shortsModel.awemeList?.length ?? 0,
          controller: PageController(initialPage: 0, viewportFraction: 1),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Stack(
              //to put all other elements on top of the video
              children: [

                ShortsPlayer(
                  shortsUrl: shortsModel.awemeList?[index].video?.playAddrH264?.urlList?.first ?? "",
                ),

                //all stacked options
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    //upper options row
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // back-arrow + shorts-heading row
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(
                                Icons.arrow_back_outlined,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              'Shorts',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),

                        //search + camera + menu row
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //search btn
                            IconButton(
                              onPressed: () {

                              },
                              icon: const Icon(
                                Icons.search_rounded,
                                color: Colors.white,
                              ),
                            ),

                            //camera btn
                            IconButton(
                              onPressed: () async {

                              },
                              icon: const Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.white,
                              ),
                            ),

                            //menu btn
                            IconButton(
                              onPressed: () {
                                showBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        color: const Color(0xff1A1818),
                                        width: double.infinity,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                showBottomSheet(
                                                    context: context,
                                                    builder: (BuildContext
                                                    context) {
                                                      return Container(
                                                        color: const Color(
                                                            0xff1A1818),
                                                        width: double
                                                            .infinity,
                                                        child: Padding(
                                                          padding: const EdgeInsets.all(25),
                                                          child: Text(
                                                            shortsModel.awemeList?[index].desc ?? "Description",
                                                            style: const TextStyle(
                                                              color: Colors.white,
                                                              fontSize: 18,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    });
                                              },
                                              child: const Padding(
                                                padding:
                                                EdgeInsets.symmetric(
                                                    vertical: 15),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets
                                                          .symmetric(
                                                          vertical: 5,
                                                          horizontal:
                                                          25),
                                                      child: Icon(
                                                        Icons
                                                            .notes_rounded,
                                                        color:
                                                        Colors.white,
                                                        size: 27,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Description',
                                                      style: TextStyle(
                                                        color:
                                                        Colors.white,
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {},
                                              child: const Padding(
                                                padding:
                                                EdgeInsets.symmetric(
                                                    vertical: 15),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets
                                                          .symmetric(
                                                          vertical: 5,
                                                          horizontal:
                                                          25),
                                                      child: Icon(
                                                        Icons
                                                            .closed_caption_rounded,
                                                        color:
                                                        Colors.white,
                                                        size: 27,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Captions',
                                                      style: TextStyle(
                                                        color:
                                                        Colors.white,
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {},
                                              child: const Padding(
                                                padding:
                                                EdgeInsets.symmetric(
                                                    vertical: 15),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets
                                                          .symmetric(
                                                          vertical: 5,
                                                          horizontal:
                                                          25),
                                                      child: Icon(
                                                        Icons
                                                            .do_not_disturb_alt_rounded,
                                                        color:
                                                        Colors.white,
                                                        size: 27,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Don\'t recommend this channel',
                                                      style: TextStyle(
                                                        color:
                                                        Colors.white,
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {},
                                              child: const Padding(
                                                padding:
                                                EdgeInsets.symmetric(
                                                    vertical: 15),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets
                                                          .symmetric(
                                                          vertical: 5,
                                                          horizontal:
                                                          25),
                                                      child: Icon(
                                                        Icons
                                                            .outlined_flag_rounded,
                                                        color:
                                                        Colors.white,
                                                        size: 27,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Report',
                                                      style: TextStyle(
                                                        color:
                                                        Colors.white,
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {},
                                              child: const Padding(
                                                padding:
                                                EdgeInsets.symmetric(
                                                    vertical: 15),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets
                                                          .symmetric(
                                                          vertical: 5,
                                                          horizontal:
                                                          25),
                                                      child: Icon(
                                                        Icons
                                                            .feedback_outlined,
                                                        color:
                                                        Colors.white,
                                                        size: 27,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Send feedback',
                                                      style: TextStyle(
                                                        color:
                                                        Colors.white,
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    });
                              },
                              icon: const Icon(
                                Icons.more_vert_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    //lower-operations row
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          //video content details
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // userprofile details
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(shortsModel.awemeList?[index].author?.avatarMedium?.urlList?.first ?? ""),
                                    radius: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                      '@${shortsModel.awemeList?[index].author?.uniqueId ?? "userName"}',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      if (subscribeSwitch) {
                                        showAlertDialog(context, index);
                                      } else {
                                        setState(() {
                                          subscribeText = 'Subscribed';
                                          subscribeBtnColor = Colors.black
                                              .withOpacity(0.7);
                                          subscribeSwitch = true;
                                        });
                                      }
                                    },
                                    child: Container(
                                      margin:
                                      const EdgeInsets.only(left: 8),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 6,
                                      ),
                                      decoration: BoxDecoration(
                                        color: subscribeBtnColor,
                                        borderRadius:
                                        BorderRadius.circular(4),
                                      ),
                                      child: Text(
                                        subscribeText,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                width: MediaQuery.of(context).size.width * 0.7,
                                padding: const EdgeInsets.all(8),
                                child: Text(
                                  shortsModel.awemeList?[index].desc ?? "Description",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          //like + dislike + comments + share options
                          SizedBox(
                            child: Column(
                              children: [
                                //like btn
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 25),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (likeBtnSwitch) {
                                          likeBtnSwitch = false;
                                          shortsModel.awemeList?[index].statistics?.diggCount--;
                                          likeBtnColor = Colors.white;
                                        } else {
                                          likeBtnSwitch = true;
                                          shortsModel.awemeList?[index].statistics?.diggCount++;
                                          likeBtnColor = Colors.blue;
                                          if (dislikeBtnSwitch) {
                                            dislikeBtnColor = Colors.white;
                                          }
                                        }
                                      });
                                    },
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.thumb_up_rounded,
                                          color: likeBtnColor,
                                          size: iconSize,
                                        ),
                                        Text("${shortsModel.awemeList?[index].statistics?.diggCount ?? ""}", style: textStyle1),
                                      ],
                                    ),
                                  ),
                                ),

                                //dislike btn
                                Padding(
                                  padding:
                                  const EdgeInsets.only(bottom: 25),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (dislikeBtnSwitch) {
                                          dislikeBtnSwitch = false;
                                          dislikeBtnColor = Colors.white;
                                        } else {
                                          dislikeBtnSwitch = true;
                                          dislikeBtnColor = Colors.blue;
                                          if (likeBtnSwitch) {
                                            shortsModel.awemeList?[index].statistics?.collectCount--;
                                            likeBtnColor = Colors.white;
                                            likeBtnSwitch = false;
                                          }
                                        }
                                      });
                                    },
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.thumb_down_rounded,
                                          color: dislikeBtnColor,
                                          size: iconSize,
                                        ),
                                        Text(
                                          "${shortsModel.awemeList?[index].statistics?.collectCount ?? "0"}",
                                          style: textStyle1,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                //comment btn
                                Padding(
                                  padding:
                                  const EdgeInsets.only(bottom: 25),
                                  child: InkWell(
                                    // onTap: (){
                                    //   setState(() {
                                    //     //open modal box
                                    //   });
                                    // },
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.comment_rounded,
                                          color: Colors.white,
                                          size: iconSize,
                                        ),
                                        Text(
                                          "${shortsModel.awemeList?[index].statistics?.commentCount ?? "Comment"}",
                                          style: textStyle1,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                //save btn
                                Padding(
                                  padding:
                                  const EdgeInsets.only(bottom: 25),
                                  child: InkWell(
                                    // onTap: (){
                                    //   setState(() {
                                    //     //open share modal box
                                    //   });
                                    // },
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.bookmark_border_rounded,
                                          color: Colors.white,
                                          size: iconSize,
                                        ),
                                        Text(
                                          "${shortsModel.awemeList?[index].statistics?.downloadCount ?? "Save"}",
                                          style: textStyle1,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                // share btn
                                Padding(
                                  padding:
                                  const EdgeInsets.only(bottom: 25),
                                  child: InkWell(
                                    onTap: () {
                                      Share.share(shortsModel.awemeList?[index].shareInfo?.shareUrl ?? "");
                                    },
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.share_rounded,
                                          color: Colors.white,
                                          size: iconSize,
                                        ),
                                        Text(
                                          'Share',
                                          style: textStyle1,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        )
      )
    );
  }





  Color likeBtnColor = Colors.white,
      dislikeBtnColor = Colors.white,
      subscribeBtnColor = Colors.red;
  double iconSize = 33;
  TextStyle textStyle1 = const TextStyle(
    color: Colors.white,
    fontSize: 15,
  );
  bool likeBtnSwitch = false, dislikeBtnSwitch = false, subscribeSwitch = false;
  String subscribeText = 'Subscribe';

  void showAlertDialog(BuildContext context, int index) {
    Widget cancelButton = TextButton(
      child: const Text(
        'Cancel',
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: const Text(
        'Unsubscribe',
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),
      onPressed: () {
        setState(() {
          subscribeText = 'Subscribe';
          subscribeBtnColor = Colors.red;
          subscribeSwitch = false;
        });
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      content: Text(
        'Unsubscribe from\n@${shortsModel.awemeList?[index].author?.uniqueId}?',
        style: const TextStyle(fontSize: 19),
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

}
