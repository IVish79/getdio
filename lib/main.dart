import 'package:flutter/material.dart';
import 'package:getdio/DioAlbums.dart';
import 'package:getdio/DioComments.dart';
import 'package:getdio/DioPosts.dart';


void main() {
  runApp(MaterialApp(
    home: demo(),
  ));
}

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Jsonplaceholder")),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return DioPosts();
                        },
                      ));
                    },
                    child: Text("Posts")),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return DioComments();
                        },
                      ));
                    },
                    child: Text("Comments")),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return DioAlbums();
                        },
                      ));
                    },
                    child: Text("Albums")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}










/*


            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return DioPhotos();
                    },
                  ));
                },
                child: Text("Photos")),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return DioTodos();
                    },
                  ));
                },
                child: Text("Todos")),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return DioUsers();
                    },
                  ));
                },
                child: Text("Users")),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return Dio_Post();
                    },
                  ));
                },
                child: Text("Post")),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return Dio_Post1();
                    },
                  ));
                },
                child: Text("Post/1")),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return Dio_Posts1_Comments();
                    },
                  ));
                },
                child: Text("posts/1/comments")),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return Dio_Comments_Postid();
                    },
                  ));
                },
                child: Text("comments?postId=1")),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return DummyProducts();
                    },
                  ));
                },
                child: Text("DummyProducts")),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return DummyCarts();
                    },
                  ));
                },
                child: Text("DummyCarts")),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return DummyUsers();
                    },
                  ));
                },
                child: Text("DummyUsers")),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return DummyPosts();
                    },
                  ));
                },
                child: Text("DummyPosts")),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return DummyComments();
                    },
                  ));
                },
                child: Text("DummyComments")),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return DummyQuotes();
                    },
                  ));
                },
                child: Text("DummyQuotes")),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return DummyTodos();
                    },
                  ));
                },
                child: Text("DummyTodos")),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return Dummy_products();
                    },
                  ));
                },
                child: Text("Dummy_products")),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return Dummy_Products1();
                    },
                  ));
                },
                child: Text("Dummy_products_1")),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return Dummy_Laptops();
                    },
                  ));
                },
                child: Text("Dummy_Laptops")),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return Dummy_C();
                    },
                  ));
                },
                child: Text("Dummy_Categories")),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return Dummy_C_Smartphone();
                    },
                  ));
                },
                child: Text("Dummy_C_Smartphone")),

 */