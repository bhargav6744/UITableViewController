//
//  ViewController.swift
//  UitableviewController
//
//  Created by Hitesh V-PI on 26/05/17.
//  Copyright © 2017 Pixabit Infotech. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    
    
    var animals = ["hourse", "cow", "camle", "sheep", "goat"]
    //let cellReuseIdentifier = "cell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(addTapped))
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
  
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath as IndexPath)
        
        cell.textLabel?.text = animals[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            
            animals.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    
    func tableView(tableView: UITableView!, canMoveRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        return true // Yes, the table view can be reordered
    }
    
    func tableView(tableView: UITableView!, moveRowAtIndexPath fromIndexPath: NSIndexPath!, toIndexPath: NSIndexPath!) {
         
        let item = animals[fromIndexPath.row]
        animals.remove(at: fromIndexPath.row)
        animals.insert(item, at: toIndexPath.row)
    }

    func addTapped(){
        
        
        
    }

    
    


}

