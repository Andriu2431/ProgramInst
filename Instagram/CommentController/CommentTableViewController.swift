//
//  CommentTableViewController.swift
//  Instagram
//
//  Created by Andriy on 21.05.2022.
//

import UIKit

class CommentTableViewController: UITableViewController {
    
    let arrayComments = ["Дуже гарно", "це жахливе фото", "красота", "супер", "мені дуже сподобалось", "клас"]
    let arrayPeople = ["Andriy", "Ira", "Gala", "Masha", "Vika", "Nasta"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.allowsSelection = false
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayComments.count
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
