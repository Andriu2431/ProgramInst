//
//  CastomTableViewCell.swift
//  Instagram
//
//  Created by Andriy on 21.05.2022.
//

import UIKit

class CastomTableViewCell: UITableViewCell {

    @IBOutlet weak var imagePhoto: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var likeLabel: UILabel!
    
        func configure(with data: ProfileModel) {
        let image = UIImage(named: data.image)
        imagePhoto.image = image
        titleLabel.text = data.label
    }
    
    func createLike() {
        let arraylike = [53, 457, 190, 32, 100, 146, 1004, 82, 34, 231]
        let randomLike = Int.random(in: 0 ..< arraylike.count)
        likeLabel.text = String(arraylike[randomLike])
    }

}

