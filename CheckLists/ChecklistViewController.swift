//
//  ViewController.swift
//  CheckLists
//
//  Created by Cem TAŞKIN on 11.12.2023.
//

import UIKit

class ChecklistViewController: UITableViewController {

    var items = [CheckListItem]() //yeni bir dizi oluşturdu. Her bir elemanı CheckListItem türünde
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var item0 = CheckListItem()
        item0.text="Eat ice cream"
        item0.checked=true;
        items.append(item0)
        var item1 = CheckListItem()
        item1.text="Walk the dog"
        item1.checked=true;
        items.append(item1)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = tableView.dequeueReusableCell(withIdentifier: "CheckListItem",for:indexPath)
            
        
        let lblSiraNo = cell.viewWithTag(1001) as! UILabel;
        
        let lblAciklama = cell.viewWithTag(1002) as! UILabel;
    
        lblSiraNo.text="\(indexPath.row)"
        //lblAciklama.text="\(Int.random(in: 1..<100))"
        
        
        var item = items[indexPath.row]
        lblAciklama.text = item.text
        if (item.checked){
            cell.accessoryType = .checkmark
        }else{
            cell.accessoryType = .none
        }
        
        
        return cell
        
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath)
        var item = items[indexPath.row]
        if (item.checked){
            item.checked = false
            cell?.accessoryType = .none
        }else{
            item.checked = true
            cell?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: false)
        
    }
}

