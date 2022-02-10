//
//  File.swift
//  
//
//  Created by Vivek Gupta on 10/02/2022.
//

import Foundation

@available(iOS 15.0, macOS 12.0, *)
public class RandomNumberVM : ObservableObject {

    @Published public var number: Int = Int()
//    @Published public var randomNumber: Int = Int()
    
    public func generateRandomNumber()->Int{
        return Int.random(in: number..<number+1000)
    }
}
