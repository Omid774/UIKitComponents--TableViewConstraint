//
//  ViewController.swift
//  TableViewConstraint
//
//  Created by Omid Heydarzadeh on 7/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    let fruits = [
        Fruit.init(name: "Apple", image: "apple", price: "5"),
        Fruit.init(name: "Banana", image: "banana", price: "4"),
        Fruit.init(name: "Grapes", image: "grapes", price: "3"),
        Fruit.init(name: "Melon", image: "melon", price: "6"),
        Fruit.init(name: "Water Melon", image: "watermelon", price: "7"),
        Fruit.init(name: "Peach", image: "peach", price: "4")
    ]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        
        tableView.dataSource = self
        tableView.delegate = self
        
//        tableView.rowHeight = 120
    }


    
}

// MARK: - Table View Data Source

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        let fruit = fruits[indexPath.row]
        cell.fruitImage.image = UIImage(named: fruit.image)
        cell.fruitName.text = fruit.name
        cell.fruitPrice.text = "$ \(fruit.price)"
        return cell
    }
    
}

// MARK: - Table View Delegate

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print(#function)
        print("cell of \(fruits[indexPath.row].name) is clicked")
    }
    
}

// MARK: - Model

struct Fruit {
    var name: String
    var image: String
    var price: String
}

// MARK: - Custom Cell

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var fruitImage: UIImageView!
    @IBOutlet weak var fruitName: UILabel!
    @IBOutlet weak var fruitPrice: UILabel!
    
}
