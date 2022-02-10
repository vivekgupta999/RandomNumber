//
//  File.swift
//  
//
//  Created by Vivek Gupta on 10/02/2022.
//

import Foundation

@available(iOS 15.0, macOS 12.0, *)
public class RandomVM : ObservableObject {

    @Published var number: Int = Int()
    @Published var randomNumber: Int = Int()
    
    func generateRandomNumber(){
        randomNumber =  Int.random(in: number..<number+1000)
    }
}
