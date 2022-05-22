//
//  CommentTableViewController.swift
//  Instagram
//
//  Created by Andriy on 21.05.2022.
//

import UIKit

class CommentTableViewController: UITableViewController {
    
    let arrayComments = ["Дуже гарно😍", "Це жахливе фото🤮", "Красота", "Супер", "Мені дуже сподобалось", "Клас👍", "😍🥰", "🙀", "Люблю тварин🦧", "Неперевернешо", "ха-ха-ха", "💆🏼‍♀️", "🐶"]
    let arrayPeople = ["Andriy", "Ira", "Gala", "Masha", "Vika", "Nasta", "Misha", "Vasa", "Oleg", "Kata", "Pasha", "German", "Vasha", "Andriy"]
    
    let randomComment = Int.random(in: 3 ..< 15)

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.allowsSelection = false
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return randomComment
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellComments", for: indexPath) as! CommentsTableViewCell
        let randomComments = Int.random(in: 0 ..< arrayComments.count)
        let randomPeople = Int.random(in: 0 ..< arrayPeople.count)
        cell.commentLabel.text = arrayComments[randomComments]
        cell.nameLabel.text = arrayPeople[randomPeople]

        return cell
    }


}
