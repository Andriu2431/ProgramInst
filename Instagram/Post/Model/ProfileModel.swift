//
//  ProfileModel.swift
//  Instagram
//
//  Created by Andriy on 21.05.2022.
//

import Foundation

struct ProfileModel {
    var image: String
}

extension ProfileModel {
    static var testData = [
        ProfileModel(image: "Image"),
        ProfileModel(image: "Image-1"),
        ProfileModel(image: "Image-2")
        ]
}
