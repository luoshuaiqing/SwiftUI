//
//  Bundle+Extension.swift
//  Touchdown
//
//  Created by Shuaiqing Luo on 7/11/24.
//

import Foundation

extension Bundle {
    
    func decode<T>(_ file: String) -> T where T: Decodable {
        guard let url = url(forResource: file, withExtension: nil) else {
            fatalError()
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError()
        }
        
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError()
        }
        return decodedData
    }
    
}
