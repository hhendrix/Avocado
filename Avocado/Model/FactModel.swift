//
//  FactModel.swift
//  Avocado
//
//  Created by Harry Lopez on 12/05/22.
//

import Foundation

// MARK: - FACT MODEL

struct Fact: Identifiable {
  var id = UUID()
  var image: String
  var content: String
}
