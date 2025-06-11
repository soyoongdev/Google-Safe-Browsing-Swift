//
//  AsyncImageLoader.swift
//  CodingTest
//
//  Created by faizal on 07/10/18.
//  Copyright © 2018 test. All rights reserved.
//

import Foundation
import UIKit

let imageCache = NSCache<NSString, UIImage>()

extension UIImageView {
    func imageFromServerURL(_ urlString: String, placeHolder: UIImage?) {
        self.image = placeHolder
        
        // Encode the URL string to handle special characters
        guard let encodedString = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
              let url = URL(string: encodedString) else {
            self.image = placeHolder
            return
        }
        
        if let cachedImage = imageCache.object(forKey: NSString(string: urlString)) {
            self.image = cachedImage
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("ERROR LOADING IMAGES FROM URL: \(error)")
                DispatchQueue.main.async {
                    self.image = placeHolder
                }
                return
            }
            
            guard let data = data, let downloadedImage = UIImage(data: data) else {
                DispatchQueue.main.async {
                    self.image = placeHolder
                }
                return
            }
            
            imageCache.setObject(downloadedImage, forKey: NSString(string: urlString))
            DispatchQueue.main.async {
                self.image = downloadedImage
            }
        }.resume()
    }
}
