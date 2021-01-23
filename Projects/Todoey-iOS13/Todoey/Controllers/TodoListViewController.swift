//
//  ViewController.swift
//  Todoey
//
//  Created by Philipp Muellauer on 02/12/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    var item = [Item]()
    
    let defaults = UserDefaults.standard
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newItem = Item()
        newItem.title = "Find Mike"
        item.append(newItem)
        
        let newItem1 = Item()
        newItem1.title = "Find leana"
        item.append(newItem1)
        
        let newItem2 = Item()
        newItem2.title = "Find George"
        item.append(newItem2)
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return item.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        let itemCell = item[indexPath.row]
        
        cell.textLabel?.text = itemCell.title
        
        if itemCell.done {
            cell.accessoryType = .checkmark
        }
        else {
            cell.accessoryType = .none
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(item[indexPath.row])
        
        item[indexPath.row].done = !item[indexPath.row].done
        
        self.tableView.reloadData()
        
        tableView.deselectRow(at: indexPath, animated: true)
    
    }
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        var textFieldOutput = UITextField()
        
        
        let alert = UIAlertController(title: "Add New Todo Item", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Item", style: .default) { (action) in
                // What will happen once the user clicks the add item button on the UI alert
            if textFieldOutput.text != "" {
                let newItem = Item()
                newItem.title = textFieldOutput.text!
                self.item.append(newItem)
                self.defaults.set(self.item, forKey: "TodoListArray")
            }
            self.tableView.reloadData()
            
        }
        
        
        alert.addAction(action)
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Create new item"
            textFieldOutput = alertTextField
        }
        
        present(alert, animated: true, completion: nil)
    }
    
    


}
