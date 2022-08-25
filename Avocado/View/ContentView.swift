//
//  ContentView.swift
//  Avocado
//
//  Created by Harry Lopez on 3/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            //HEADER
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top, spacing: 0) {
                    
                    ForEach(headersData) { item in
                        HeaderView(header: item)
                    }
                }// HSTACK
            }// SCROLLVIEW
            
            // MARK: - DISHES
            Text("Avocado Dishes")
                .fontWeight(.bold)
                .modifier(TitleModifier())
            
            DishesView()
                .frame(maxWidth:640)
            
            // MARK: - AVOCADO FACTS
            Text("Avocado Facts")
                .fontWeight(.bold)
                .modifier(TitleModifier())
            
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack(alignment: .top, spacing: 60, content: {
                    ForEach(factsData) { item in
                        FactsView(fact: item)
                    }
                    
                }) // HSTACK
                .padding(.vertical)
                .padding(.leading, 60)
                .padding(.trailing, 20)
            }) // SCROLLVIEW
            
            
            // MARK: - RECIPES CARDS
            Text("Avocado Recipes")
                .fontWeight(.bold)
                .modifier(TitleModifier())
            
            VStack(alignment: .center, spacing: 20, content: {
                ForEach(recipesData) { item in
                    RecipeCardView(recipe: item)
                }
            })
            .frame(maxWidth:640)
            .padding(.horizontal)
            
            //FOOTER
            VStack(alignment: .center, spacing: 20) {
                Text("All About Avocados")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                Text("Everything you wanted to know about avocados were too afraid to ask.")
                    .font(.system(.body, design: .serif))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                    .frame(minHeight:60)
            }// VSTACK
            .frame(maxWidth:640)
            .padding()
            .padding(.bottom, 85)
        })// SCROLLVIEW
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifier:ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
