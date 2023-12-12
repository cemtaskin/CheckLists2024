//
//  ViewController.swift
//  CheckLists
//
//  Created by Cem TAŞKIN on 11.12.2023.
//

import UIKit

class ChecklistViewController: UITableViewController {

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
}

