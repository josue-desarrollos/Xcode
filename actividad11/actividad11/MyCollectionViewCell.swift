//
//  MyCollectionViewCell.swift
//  actividad11
//
//  Created by user182861 on 4/23/21.
//  Copyright © 2021 tecmilenio.com. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    @IBOutlet var imageView: UIImageView!

    static let identifier = "MyCollectionViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public func configured(with image: UIImage){
        imageView.image = image
    }

    static func nib() -> UINib{
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }

}
