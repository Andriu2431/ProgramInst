//
//  ProfileViewController.swift
//  Instagram
//
//  Created by Andriy on 21.05.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
createImageView()
    }
    
    func createImageView() {
        //Заокруглення кутів
        imageView.layer.cornerRadius = imageView.frame.size.height / 2
        //обрізає все що виступає за рамки заокруглених кутів
        imageView.layer.masksToBounds = true
        //Обводка нашої фото
        imageView.layer.borderWidth = 5
        //колір обводки
        let borderColor = UIColor.yellow
        //присвоюємо цей колір
        imageView.layer.borderColor = borderColor.cgColor
    }
}
