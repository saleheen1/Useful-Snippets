1. //you used singlechildscrollview but your listview builder not scrolling:
solution: in listview.builder use- physics: NeverscrollableScrollPhysics();
