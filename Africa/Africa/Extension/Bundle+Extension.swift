//
//  CodableBundle+Extension.swift
//  Africa
//
//  Created by Shuaiqing Luo on 7/8/24.
//

import Foundation

extension Bundle {
    func decode<T>(_ file: String) -> [T] where T : Codable {
        guard let url = url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        guard let loaded = try? decoder.decode([T].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        return loaded
    }
}
