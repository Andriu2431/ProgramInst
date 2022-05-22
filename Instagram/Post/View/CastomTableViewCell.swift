//
//  CastomTableViewCell.swift
//  Instagram
//
//  Created by Andriy on 21.05.2022.
//

import UIKit

class CastomTableViewCell: UITableViewCell {

    @IBOutlet weak var imagePhoto: UIImageView!
    
    func configure(with testData: ProfileModel) {
        let image = UIImage(named: testData.image)
        imagePhoto.image = image
    }

}
