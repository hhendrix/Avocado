//
//  RecipeCookingView.swift
//  Avocado
//
//  Created by Harry Lopez on 13/05/22.
//

import SwiftUI

struct RecipeCookingView: View {
    // MARK: - PROPERTY
    
    var recipe:Recipe
    // MARK: - BODY
    var body: some View {
         HStack(alignment: .center, spacing: 12, content: {
            HStack(alignment: .center, spacing: 2, content: {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            })
            HStack(alignment: .center, spacing: 2, content: {
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            })
            HStack(alignment: .center, spacing: 2, content: {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            })
            
            
            
        })
        .font(.footnote)
        .foregroundColor(.gray)
    }
}
// MARK: - PREVIEW
struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
