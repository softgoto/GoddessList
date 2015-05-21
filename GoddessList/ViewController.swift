//
//  ViewController.swift
//  GoddessList
//
//  Created by xuhui on 15/5/18.
//  Copyright (c) 2015年 xuhui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var picker: UIPickerView!
    
    let goddess = ["范冰冰", "Angelababy", "唐嫣", "杨幂", "张馨予"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        picker.dataSource = self
        picker.delegate = self

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "GoddessSegue"
        {
            let index = picker.selectedRowInComponent(0)
            
            var imageName:String?
            
            switch index
            {
            case 0:
                imageName = "0.jpg"
            case 1:
                imageName = "1.jpg"
            case 2:
                imageName = "2.jpg"
            case 3:
                imageName = "3.jpg"
            case 4:
                imageName = "4.jpg"
            default:
                imageName = nil
            }
            
            var vc = segue.destinationViewController as! GoddessInfo
            vc.imageName = imageName
            vc.titleName = goddess[index]
        }
    }

}

