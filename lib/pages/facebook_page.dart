import 'package:flutter/material.dart';

class FacebookPage extends StatefulWidget {
  const FacebookPage({super.key});

  @override
  State<FacebookPage> createState() => _FacebookPageState();
}

class _FacebookPageState extends State<FacebookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('facebook',style: TextStyle(
          color: Colors.blueAccent,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),),
        centerTitle: false,
        actions: [
          MaterialButton(
            onPressed: (){},
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
            color: Colors.grey[800],
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.camera_alt),
            color: Colors.grey[800],
          ),
        ],
      ),
      body: ListView(

        //#Search_page:
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 10,left: 10,right: 10),
            height: 90,
            width: MediaQuery.of(context).size.width,
            //color: Colors.orange,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        //color: Colors.red,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/user_5.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          //color: Colors.white,
                          height: 46,
                          padding: EdgeInsets.only(left: 15,right: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(23),
                              border: Border.all(width: 1,color: Colors.grey.withOpacity(0.5))
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "What's on your mind?",
                                hintStyle: TextStyle(color: Colors.grey[700]),
                                border: InputBorder.none
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


                SizedBox(height: 5,),


                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.video_call,color: Colors.red,),
                              SizedBox(width: 5,),
                              Text("Live"),
                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: 1,
                        margin: EdgeInsets.only(top: 13,bottom: 13),
                        color: Colors.grey[300],
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.photo,color: Colors.green,),
                              SizedBox(width: 5,),
                              Text("Photo"),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 1,
                        margin: EdgeInsets.only(top: 13,bottom: 13),
                        color: Colors.grey[300],
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.location_on,color: Colors.red,),
                              SizedBox(width: 5,),
                              Text("Check in"),
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
          SizedBox(height: 10,),

          //#Stories:

          Container(
            height: 200,
            color: Colors.white,
            padding: EdgeInsets.only(top: 10,bottom: 10,left: 10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                makeStory(
                    storyImage: 'assets/images/story_5.jpg',
                    userImage: 'assets/images/user_5.jpg',
                    userName: 'User Five'),
                makeStory(
                    storyImage: 'assets/images/story_4.jpg',
                    userImage: 'assets/images/user_4.jpg',
                    userName: 'User Four'),
                makeStory(
                    storyImage: 'assets/images/story_3.jpg',
                    userImage: 'assets/images/user_3.jpg',
                    userName: 'User Three'),
                makeStory(
                    storyImage: 'assets/images/story_2.jpg',
                    userImage: 'assets/images/user_2.jpg',
                    userName: 'User Two'),
                makeStory(
                    storyImage: 'assets/images/story_1.jpg',
                    userImage:  'assets/images/user_1.jpg',
                    userName: 'User One'),

              ],
            ),
          ),

          //#Feed:

          makeFeed(
              userName: 'User Two',
              userImage: 'assets/images/user_2.jpg',
              feedTime: '1 hr ago',
              feedText:
              'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              feedImage: 'assets/images/story_2.jpg'),
          makeFeed(
              userName: 'User Three',
              userImage: 'assets/images/user_3.jpg',
              feedTime: '1 hr ago',
              feedText:
              'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              feedImage: 'assets/images/story_3.jpg'),

        ],
      ),
    );
  }

  Widget makeFeed({userName,userImage,feedTime,feedText,feedImage}){
    return Container(
      //padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10 ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(userImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            Text(userName, style: TextStyle(color: Colors.grey[900], fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1),),
                            SizedBox(height: 3,),
                            Text(feedTime, style: TextStyle(fontSize: 15, color: Colors.grey),),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.more_horiz,color: Colors.grey[600],size: 30,),
                      onPressed: (){},
                    ),
                  ],
                ),
                SizedBox(height: 10,),

                Text(feedText,style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[800],
                  height: 1.5,
                  letterSpacing: 0.7,
                ),),

              ],
            ),
          ),

          //#main_picture:
          Container(
            height: 240,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(feedImage),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            color: Colors.white,
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                makelike(),
                Transform.translate(
                  child: makelove(),
                  offset: Offset(-5, 0),  //-------> Cordinates of object (x,y)
                ),
                SizedBox(width: 8,),
                Text("2.5K",style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[800],
                ),),

                Expanded(child: SizedBox.shrink()),
                Text("400 Comments",style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[800],
                ),),
              ],
            ),
          ),
        ],
      ),


    );
  }

  Widget makelike(){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child:Center(
        child:
        Icon(
          Icons.thumb_up,color: Colors.white,size: 12,
        ),
      ) ,
    );
  }
  Widget makelove(){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child:Center(
        child:
        Icon(
          Icons.favorite,color: Colors.white,size: 12,
        ),
      ) ,
    );
  }

  Widget makeStory({storyImage,userImage,userName}) {
    return AspectRatio(
      aspectRatio: 1.3/2,
      child: Container(
        //color: Colors.red,
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.1),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width:40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue,width: 2),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(userName,style: TextStyle(color: Colors.white),),

            ],
          ),
        ),
      ),
    );

  }
}
