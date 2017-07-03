//
//  WeekDaysCollectionViewCell.swift
//  free slots timetable
//
//  Created by arora_72 on 03/07/17.
//  Copyright © 2017 indresh arora. All rights reserved.
//

import UIKit

class WeekDaysCollectionViewCell: UICollectionViewCell {
    

    @IBOutlet weak var weekDaysLabel: UILabel!
    
    
    override func apply(_ layoutAttributes: UICollectionViewLayoutAttributes) {
        layer.cornerRadius = frame.size.width/2
    }
    
    override var isHighlighted: Bool{
        didSet{
            
            self.tintColor = isHighlighted ? UIColor.blue : UIColor.white
            weekDaysLabel.tintColor = isHighlighted ? UIColor.white : UIColor.blue
            
        }
    }
    
    override var isSelected: Bool{
        didSet{
            
            self.tintColor = isHighlighted ? UIColor.blue : UIColor.white
            weekDaysLabel.tintColor = isHighlighted ? UIColor.white : UIColor.blue
            
        }
    }


} //class
