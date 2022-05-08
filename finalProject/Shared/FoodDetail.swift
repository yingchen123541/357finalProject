//
//  FoodDetail.swift
//  Preferable simulator: iphone 11
//  Yuki_Chen_final_project
//  Created by yingying Chen on 5/2/22.
//

import SwiftUI

struct FoodDetail: View {
    //state variable to keep track of how many likes the food dish gets
    //if people like this dish can give it a like by clicking the "like" button
   // @State var like: Int = 0
    @State var addToCart: Int = 0
    
    let selectedFood: Food
    var body: some View {
        //this is the food item view with food name and description
        VStack{
          Text("grocery item details")
          Divider()
            //larger font for the food name
            Group{
          Text(selectedFood.name)
                .font(.custom("Copperplate",size:30))
            //display how many likes this food dish has
          Text("in cart: \(addToCart)")
                .font(.custom("Copperplate",size:30))
          Spacer()
            }//end group
          Image(selectedFood.imageName)
                .resizable()
                .cornerRadius(12.0).aspectRatio(contentMode: .fit)
                .padding()
          Group{
          Text("Description: ")
            .font(.system(size: 20))
          Text(selectedFood.description)
            .font(.system(size: 35))
            Spacer()
            
          Text("Price: ")
            .font(.system(size: 20))
          Text(selectedFood.price)
            .font(.system(size: 35))
            Spacer()
          }//end group
            //button for liking this dish, user can click this button if they like the dish
   
            
            Button(
                action:{self.addToCart = addToCart + 1},
                label:{Text("add to cart")
                        .font(.system(size: 40))
                }
            )
            
        }//end vstack
        
    }
}

struct FoodDetail_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetail(selectedFood: foodData[0])
    }
}

