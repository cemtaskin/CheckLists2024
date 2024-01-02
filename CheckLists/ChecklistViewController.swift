//
//  ViewController.swift
//  CheckLists
//
//  Created by Cem TAŞKIN on 11.12.2023.
//

import UIKit

class ChecklistViewController: UITableViewController {
    var row0Checked=false
    var row1Checked=false
    var row2Checked=false
    var row3Checked=false
    var row4Checked=false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
        
        switch(indexPath.row%5){
            case 0:
                lblAciklama.text="Eat ice cream"
                break;
            case 1:
                lblAciklama.text="Walk the dog"
                break;
            case 2:
                lblAciklama.text="Learn iOS"
                break;
            case 3:
                lblAciklama.text="Soccer practice"
                break;
            case 4:
                lblAciklama.text="Brush my teeth"
                break;
            default:
                break;

        }
        
        
        
        return cell
        
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 50
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let cell = tableView.cellForRow(at: indexPath)!
        
        
        switch (indexPath.row%5){
        case 0:
            row0Checked = !row0Checked
            
            break
        case 1:
            row1Checked = !row1Checked
            break
        case 2:
            row2Checked = !row2Checked
            break
        case 3:
            row3Checked = !row3Checked
            break
        case 4:
            row4Checked = !row4Checked
            break
        default:
            break
        }
        
        switch(indexPath.row%5){
        case 0:
            if (row0Checked){
                cell.accessoryType = .checkmark
            }else{
                cell.accessoryType = .none
            }
                break
        case 1:
            if (row1Checked){
                cell.accessoryType = .checkmark
            }else{
                cell.accessoryType = .none
            }
            break
        case 2:
            if (row2Checked){
                cell.accessoryType = .checkmark
            }else{
                cell.accessoryType = .none
            }
            break
        case 3:
            if (row3Checked){
                cell.accessoryType = .checkmark
            }else{
                cell.accessoryType = .none
            }
            break
        case 4:
            if (row4Checked){
                cell.accessoryType = .checkmark
            }else{
                cell.accessoryType = .none
            }
            break
        default:
            break
        }
            
        tableView.deselectRow(at: indexPath, animated: false)
        
    }
}

