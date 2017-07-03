//
//  ViewController.swift
//  free slots timetable
//
//  Created by arora_72 on 03/07/17.
//  Copyright © 2017 indresh arora. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    let weekDaysArray = ["M","T","W","T","F"]
    let sectionItems = ["8-9 AM","9-10 AM","10-11 AM","11-12 AM","12-1 PM","1-2 PM","2-3 PM","3-4 PM","4-5 PM","5-6 PM","6-7 PM","7-8 PM","8-9 PM"]
    
    @IBOutlet weak var segmentedView: UISegmentedControl!
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var tableView: UITableView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView!.delegate = self
        self.collectionView!.dataSource = self
        
        collectionView.backgroundColor = UIColor.white
        
        
        
        //when the app open show selected monday
        let selectedPathIndex = NSIndexPath(item: 0, section: 0)
        print(selectedPathIndex)
        
        collectionView.selectItem(at: selectedPathIndex as IndexPath, animated: true, scrollPosition: .centeredHorizontally)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //collection View
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    
       
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! WeekDaysCollectionViewCell
        
        cell.backgroundColor = UIColor.white
        cell.weekDaysLabel.text = weekDaysArray[indexPath.item]
        
        return cell
        
    }
    
    //table view
    
    
    
    
    }

    



