//
//  Import.swift
//  GiphySDK
//
//  Created by Scheggia on 20/10/2020.
//

import GiphyUISDK
import GiphyCoreSDK

public class GiphySDKWrapper {
    public func configure(apiKey: String) {
        Giphy.configure(apiKey: apiKey)
    }

    public func gifByID(_ id: String, completion: @escaping (Any) -> Void) {
        GiphyCore.shared.gifByID(id) { response, _ in
            guard let media = response?.data else { return }
            DispatchQueue.main.async {
                completion(media)
            }
        }
    }
}

public class GifMediaView {
    public let view: UIView = GPHMediaView()
    public var media: Any? {
        didSet {
            guard let gifMedia = media as? GPHMedia,
                  let gifView = view as? GPHMediaView else { return }
            gifView.media = gifMedia
        }
    }
}
public protocol GifControllerDelegate {
    func didSelectMedia(url: String,  id: String)
}

public class GifController {
    public var delegate: GifControllerDelegate?
    public private (set) var viewController: UIViewController = GiphyViewController() {
        didSet {
            guard let gifViewController = viewController as? GiphyViewController else { return }
            gifViewController.delegate = self
            gifViewController.modalPresentationStyle = .overCurrentContext
        }
    }
}

extension GifController: GiphyDelegate {

    public func didDismiss(controller: GiphyViewController?) {}

    public func didSelectMedia(giphyViewController: GiphyViewController, media: GPHMedia) {
        guard let gifURL = media.url(rendition: .fixedWidth, fileType: .gif) else { return }
        delegate?.didSelectMedia(url: gifURL, id: media.id)
    }
}
