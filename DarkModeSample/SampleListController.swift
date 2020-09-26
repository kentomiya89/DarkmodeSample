//
//  ViewController.swift
//  DarkModeSample
//
//  Created by 宮林健斗 on 2020/08/17.
//  Copyright © 2020 宮林健斗. All rights reserved.
//

import UIKit

class SampleListController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

//UITableView delegate method
extension SampleListController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SampleListCell.cellTitle.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                
        let cell = tableView.dequeueReusableCell(withIdentifier: SampleListCell.cellID, for: indexPath)
        let title = SampleListCell.cellTitle[indexPath.row]
        
        cell.textLabel?.text = title
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            perform(segue: StoryboardSegue.SampleListTop.howToSegue)
            break
        default:
            break
        }

    }
}
