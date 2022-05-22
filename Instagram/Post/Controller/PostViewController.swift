//
//  PostViewController.swift
//  Instagram
//
//  Created by Andriy on 21.05.2022.
//

import UIKit

class PostViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var testData = ProfileModel.testData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
    }
}

extension PostViewController: UITableViewDelegate {
    
}

extension PostViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CastomTableViewCell
        let testData = testData[indexPath.row]
        cell.configure(with: testData)
        return cell
    }
}
