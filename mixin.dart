void main(){
//   Publisher().postComment();
//   Publisher().canpublish();
  
  Admin().postComment();
  Admin().deleteComment();
  Admin().canpublish();
}

class User{
  void postComment(){
    print("Commented");
  }
}

class Moderator extends User{
  void deleteComment(){
    print("comment deleted");
  }
}

class Publisher extends User with canPublishArticle{
  //moderator can only comment and publish
  
}

class Admin extends Moderator with canPublishArticle{
  // admin has access to all class, it extends moderator which extends user
  //so admin gets access to moderator and user// and admin has access to canPublishArticle as well
  
  
}

mixin canPublishArticle{
  void canpublish(){
    print("post published");
  }
}
