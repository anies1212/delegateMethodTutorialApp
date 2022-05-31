//
//  ViewController.swift
//  delegateMethodTutorialApp
//
//  Created by anies1212 on 2022/04/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    var fruitsArray = ["apple", "banana", "lemon"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "FruitsTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FruitsTableViewCell
        cell.fruitsNameLabel.text = fruitsArray[indexPath.row]
        cell.delegate = self
        cell.indexPath = indexPath
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell selected.")
    }
}

extension ViewController: FruitsTableViewCellDelegate {
    
    func didTappedFruitsButton(for cell: FruitsTableViewCell) {
        guard let indexPath = cell.indexPath?.row else {return}
        print("indexPath:\(indexPath)")
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "fruitsVC") as! FruitsViewController
        vc.receiveFruitsString = fruitsArray[indexPath]
        present(vc, animated: true)
    }
    
    
    
}
