//
//  ProfileModel.swift
//  Instagram
//
//  Created by Andriy on 21.05.2022.
//

import Foundation

struct ProfileModel {
    var image: String
    var label: String
}

extension ProfileModel {
    static var testData = [
        ProfileModel(image: "Image", label: "Цей песик, це друг нашої сімї, він дуже гарний, ми завжди його фоткаємо."),
        ProfileModel(image: "Image-1", label: "Гори - це неймовірна краса, я дуже часто подорожую, у мене багато таких фото є."),
        ProfileModel(image: "Image-2", label: "Ці тварини, неймовірно красиві, вони прожувають у Іспанії, не жалійте лайків."),
        ProfileModel(image: "Image-3", label: "Це фото моєї нової кав'ярні🧋. Ми відкрили сьогодні ще один заклад)"),
        ProfileModel(image: "Image-4", label: "Вода🫣. Це те що є найдближчим до нас, наш організм складається на 70% з води."),
        ProfileModel(image: "Image-5", label: "Такі фото, дуже красиві. Я розумію, що людство не стоїть на місті."),
        ProfileModel(image: "Image-6", label: "Квіти, це неймовірна краса. Вони мені дуже подобаються😍"),
        ]
}
