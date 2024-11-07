import 'package:features/model/dataModel.dart';
import 'package:features/services/api_services.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  final ApiService apiService= ApiService();
  final ScrollController _scrollController=ScrollController();
  List<Post> posts=[];
  int page=1;
  bool isLoading=false;

  @override
  void initState(){
    super.initState();
    fetchPosts();
    _scrollController.addListener((){
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        fetchPosts();
      }
    });
  }


  Future<void> fetchPosts() async{
    if(isLoading) return;
    setState(() {
      isLoading=true;
    });

    final fetchPosts = await apiService.fetchPost(page, 10);
    setState(() {
      posts.addAll(fetchPosts);
      page++;
      isLoading=false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: posts.length+1,
        itemBuilder: (context, index){
          if(index==posts.length){
            return isLoading? 
              Center(child: CircularProgressIndicator(),) :
              SizedBox();
          }
          final post= posts[index];
          return ListTile(
            leading: Icon(Icons.account_box),
            title: Text(post.title),
            subtitle: Column(
                        children: [
                          Text(post.body),
                          Divider(thickness: 2,)
                        ],
                      ),
          );
        }
        ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}