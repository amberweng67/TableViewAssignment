//
//  ViewController.swift
//  TableViewAssignment2
//
//  Created by Liuning Weng on 9/25/21.
//

import UIKit

class ViewController: UIViewController, UITabBarDelegate, UITableViewDataSource, UITableViewDelegate {
    
    var arr = ["apple", "orange", "mango", "lemon"]
    

    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.imgView.image = UIImage(named: arr[indexPath.row])
        cell.lblImage.text = arr[indexPath.row]
        return cell
    }

}

