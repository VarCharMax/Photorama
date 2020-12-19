//
//  PhotoCollectionViewCell.swift
//  Photorama
//
//  Created by Rohan Parkes on 19/4/19.
//  Copyright © 2019 Rohan Parkes. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var spinner: UIActivityIndicatorView!
    var photoDescription: String?
    
    override var accessibilityLabel: String? {
        get {
            return photoDescription
        }
        set {
            // Ignore
        }
    }
    
    override var accessibilityTraits: UIAccessibilityTraits {
        get {
            return UIAccessibilityTraits(rawValue: super.accessibilityTraits.rawValue | UIAccessibilityTraits.image.rawValue)
        }
        set {
            // Ignore
        }
    }
    
    override var isAccessibilityElement: Bool {
        get {
            return true
        }
        set {
            super.isAccessibilityElement = newValue
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        update(with: nil)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        update(with: nil)
    }
    
    func update(with image: UIImage?) {
        if let imageToDisplay = image {
            spinner.stopAnimating()
            imageView.image = imageToDisplay
        } else {
            spinner.startAnimating()
            imageView.image = nil
        }
    }
}
