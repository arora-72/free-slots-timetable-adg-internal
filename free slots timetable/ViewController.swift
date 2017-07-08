//
//  ViewController.swift
//  free slots timetable
//
//  Created by arora_72 on 03/07/17.
//  Copyright © 2017 indresh arora. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UIScrollViewDelegate{
    
    let weekDaysArray = ["M","T","W","T","F"]
    var sectionItems: [[String]] = []
    
    
    let colorArray: [UIColor] = [UIColor.gray, UIColor.purple, UIColor.red, UIColor.yellow, UIColor.brown]
    @IBOutlet weak var segmentedView: UISegmentedControl!
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var secondCollectionView: UICollectionView!

    
    let dataSourceDelegate = tableViewModel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView!.delegate = self
        self.collectionView!.dataSource = self
        
        self.secondCollectionView!.delegate = self
        self.secondCollectionView!.dataSource = self
        
        //table view delegates setting
//        self.tableView.delegate = self
//        self.tableView.dataSource = self
        
        collectionView.backgroundColor = UIColor.white
        
        
        
        //when the app open show selected monday
        let selectedPathIndex = NSIndexPath(item: 0, section: 0)
        print(selectedPathIndex)
        
        collectionView.selectItem(at: selectedPathIndex as IndexPath, animated: true, scrollPosition: .centeredHorizontally)
       
        
    }
    @IBAction func indexChanged(_ sender: Any) {
        
        
        switch segmentedView.selectedSegmentIndex {
        case 0:
            fetchFirstYearData();
        case 1:
            fetchSecondYearData();
        default:
            break;
        }
        
    }
    
    func fetchFirstYearData(){
        
        //first year data will be populated here
        print("first year data")
    }
    
    func fetchSecondYearData(){
        //second year data will be populated here
        print("second year data")
        
    }
    
//    func loadData(){
//        
//        self.sectionItems = [["8-9 AM"],["9-10 AM"],["10-11 AM"],["11-12 AM"],["12-1 PM"],["1-2 PM"],["2-3 PM"],["3-4 PM"],["4-5 PM"],["5-6 PM"],["6-7 PM"],["7-8 PM"],["8-9 PM"]]
//        self.dataSourceDelegate.sectionItems = self.sectionItems
//        
//        self.secondCollectionView.reloadData()
//    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView != secondCollectionView{
            print(indexPath.item)
            scrollToMenuIndex(menuIndex: indexPath.item)

        }else{
                scrollToPrimaryIndex(menuIndex: indexPath.item)
        }
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
        if collectionView != secondCollectionView{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! WeekDaysCollectionViewCell
        
        cell.backgroundColor = UIColor.white
        cell.weekDaysLabel.text = weekDaysArray[indexPath.item]
        
        return cell
        }else{
            let cell = secondCollectionView.dequeueReusableCell(withReuseIdentifier: "secondCollectionViewCell", for: indexPath) as! secondCollectionViewCell
            cell.backgroundColor = colorArray[indexPath.item]
            print(indexPath.row)
            cell.tableView.tag = indexPath.row + 1
            cell.tableView.dataSource = dataSourceDelegate
            cell.tableView.delegate = dataSourceDelegate
            //layer for cell
            
            return cell
        }
        
    }
    
    
    func scrollToMenuIndex(menuIndex: Int){
        let indexPath = NSIndexPath(item: menuIndex, section: 0)

        secondCollectionView?.scrollToItem(at: indexPath as IndexPath, at: [], animated: true)
    }
    
    

    
    func scrollToPrimaryIndex(menuIndex: Int){
        
        
        let indexPath = NSIndexPath(item: menuIndex, section: 0)
        collectionView?.scrollToItem(at: indexPath as IndexPath, at: [], animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView != secondCollectionView{
            return CGSize(width: view.frame.width/5, height: view.frame.height)
        }else{
            return CGSize(width: view.frame.width, height: view.frame.height - 300)
        }
    }
    
    

    
   
} //class

    



