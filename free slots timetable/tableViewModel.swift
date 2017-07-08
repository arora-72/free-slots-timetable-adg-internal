//
//  tableViewModel.swift
//  free slots timetable
//
//  Created by arora_72 on 08/07/17.
//  Copyright © 2017 indresh arora. All rights reserved.
//

import UIKit

class tableViewModel: NSObject, UITableViewDelegate, UITableViewDataSource {

    
   

    var sectionItems: [String] = ["8-9 AM","9-10 AM","10-11 AM","11-12 AM","12-1 PM","1-2 PM","2-3 PM","3-4 PM","4-5 PM","5-6 PM","6-7 PM","7-8 PM","8-9 PM"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
       
        return sectionItems.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionItems[section]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath)
        tableViewCell.textLabel?.text = "No Text"
        return tableViewCell
    }
    
    
    //tableView
    
    
    //    func numberOfSections(in tableView: UITableView) -> Int {
    //        print(sectionItems.count)
    //        return sectionItems.count
    //
    //    }
    //
    //    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    //        return sectionItems[section]
    //    }
    //
    //    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
    //
    //        tableViewCell.textLabel?.text = "No slots free"
    //
    //        return tableViewCell
    //    }
    //
    //    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    //        return 5
    //    }

    
}
