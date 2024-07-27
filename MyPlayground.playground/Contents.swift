import Foundation
import Combine
import UIKit

class ImageDownloader {
    private var cancellables = Set<AnyCancellable>()
    
    func downloadImages(urls: [URL], completion: @escaping ([UIImage?]) -> Void) {
        let publisher = urls.publisher
            .flatMap(maxPublishers: .max(5)) { url in
                print("here")
                return self.downloadImage(from: url)
            }
            .receive(on: DispatchQueue.main)
        
        publisher
            .sink(receiveCompletion: { completionStatus in
                switch completionStatus {
                case .finished:
                    print("completed..")
                case .failure(let error):
                    print("Error: \(error)")
                }
            }, receiveValue: { image in
            })
            .store(in: &cancellables)
    }
    
    private func downloadImage(from url: URL) -> AnyPublisher<UIImage?, Never> {
        URLSession.shared.dataTaskPublisher(for: url)
            .map { data, _ in UIImage(data: data) }
            .delay(for: .seconds(Int.random(in: 5...10)), scheduler: DispatchQueue.main)
            .replaceError(with: nil)
            .eraseToAnyPublisher()
    }
}

// Usage Example
let downloader = ImageDownloader()
let imageUrls = Array(0...10).map { _ in
    URL(string: "https://example.com/image1.jpg")!
}

downloader.downloadImages(urls: imageUrls) { images in
    for (index, image) in images.enumerated() {
        print("Image \(index + 1): \(String(describing: image))")
    }
}
