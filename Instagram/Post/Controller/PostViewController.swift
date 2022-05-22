//
//  PostViewController.swift
//  Instagram
//
//  Created by Andriy on 21.05.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    private var testData: [ProfileModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let model = ProfileModel.testData
        setupData(with: model)
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
    }
    
    func setupData(with testData: ([ProfileModel])) {
        self.testData = testData
    }
}


extension PostViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CastomTableViewCell
        cell.createLike()
        let randomPost = Int.random(in: 0 ..< testData.count)
        let Data = testData[randomPost]
        cell.configure(with: Data)
        return cell
    }
}

