//
//  AddCoffeeView.swift
//  HelloCoffee
//
//  Created by Shuaiqing Luo on 6/2/24.
//

import SwiftUI

struct AddCoffeeErrors {
    var name: String = ""
    var coffeeName: String = ""
    var price: String = ""
}

struct AddCoffeeView: View {
    
    @State private var name: String = ""
    @State private var coffeeName: String = ""
    @State private var price: String = ""
    @State private var coffeeSize: CoffeeSize = .medium
    @State private var errors: AddCoffeeErrors = AddCoffeeErrors()
    
    var isValid: Bool {
        errors = AddCoffeeErrors()
        if name.isEmpty {
            errors.name = "Name cannot be empty!"
        }
        
        if coffeeName.isEmpty {
            errors.coffeeName = "Coffee name cannot be empty"
        }
        
        if price.isEmpty {
            errors.price = "Price cannot be empty"
        } else if price.isNumeric {
            errors.price = "Price needs to be a number"
        } else if price.isLessThan(0) {
            errors.price = "Price needs to be more than 0"
        }
        
        return errors.name.isEmpty && errors.price.isEmpty && errors.coffeeName.isEmpty
    }
    
    var body: some View {
        Form {
            TextField("Name", text: $name)
                .accessibilityIdentifier("name")
            Text(errors.name).visible(!errors.name.isEmpty)
                
            TextField("Coffee name", text: $coffeeName)
                .accessibilityIdentifier("coffeeName")
            TextField("Price", text: $price)
                .accessibilityIdentifier("price")
            Picker("Select size", selection: $coffeeSize) {
                ForEach(CoffeeSize.allCases, id: \.rawValue) { size in
                    Text(size.rawValue).tag(size)
                }
            }.pickerStyle(.segmented)
            
            Button("Place Order") {
                if isValid {
                    
                }
            }.accessibilityIdentifier("placeOrderButton")
                .centerHorizontally()
        }
    }
}

#Preview {
    AddCoffeeView()
}
