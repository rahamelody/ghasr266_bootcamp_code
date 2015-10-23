class CheapEats {
  
  //data
  
  
    String placesName; 
    String placesUrl;
    String price;
    int nReviews;
    String cuisine; 
    String cuisineUrl; 
    float radius;
    
    float h, s, b;
    float bubbleSize;
    float tempBubbleSize;
    PVector pos;
  
   //constructor
   CheapEats(String _placesName, String _placesUrl, String price_, int nReviews_, String cuisine_, String cuisineUrl_, String radius_) {
      
     placesName = _placesName;
     placesUrl = _placesUrl;
     price = price_;
     nReviews = nReviews_;
     cuisine = cuisine_;
     cuisineUrl = cuisineUrl_;
     radius = radius_;
     
     //////////////////////////////////////////////////
    //assigning colors, just changing hue
    if (cuisineCategory.equals("Sandwiches")) {
      h = 0; //red
    } else if (cuisineCategory.equals("Pizza")) {
      h = 20;
    } else if (cuisineCategory.equals("Coffee & Tea")) {
      h = 40;
    } else if (cuisineCategory.equals("Delis")) {
      h = 60;
    } else if (cuisineCategory.equals("Japanese")) {
      h = 80;
    } else if (cuisineCategory.equals("Burgers")) {
      h = 100;
    } else if (cuisineCategory.equals("American (New)")) {
      h = 120;
    } else if (cuisineCategory.equals("Food Stands")) {
      h = 140;
    } else if (cuisineCategory.equals("Ice Cream & Frozen Yogurt")) {
      h = 160;
    } else if (cuisineCategory.equals("Italian")) {
      h = 180;
    } else if (cuisineCategory.equals("Juice Bars & Smoothies")) {
      h = 200;
    } else if (cuisineCategory.equals("Mexican")) {
      h = 220;
    } else if (cuisineCategory.equals("Bakeries")) {
      h = 240;
    } else if (cuisineCategory.equals("Falafel")) {
      h = 260;
    } else if (cuisineCategory.equals("Chocolatiers & Shops")) {
      h = 280;
    } else if (cuisineCategory.equals("Asian Fusion")) {
      h = 300;
    } else if (cuisineCategory.equals("Thai")) {
      h = 320;
    } else if (cuisineCategory.equals("Vegetarian")) {
      h = 340;
    } else {//OTHER
      
      h = 360; 
      s = 0; 
      b = 50;
    }
    s = 255;
    b = 255;
    ///////////////////////////////////////////
}

    //methods
    //this is a function that returns a float
    
    float calculateBubbleSize(int area){
      float r = sqrt(area/PI);
      return myScale*r;
    }
    
    boolean isHovering () {
        float distance = dist(mouseX, mouseY, pos.x + width/2, pos.y + height/2);
        
        if (distance < bubbleSize/2) {
          return true;
        } else {
          return false;
        }  
    }
    
    void display () {
      fill(h,s,b);
      ellipse();
    }
}
