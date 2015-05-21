//
//  ViewControllerExtension.swift
//  GoddessList
//
//  Created by xuhui on 15/5/18.
//  Copyright (c) 2015年 xuhui. All rights reserved.
//

import UIKit

extension ViewController:UIPickerViewDataSource
{
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return goddess.count
    }
    
}

extension ViewController:UIPickerViewDelegate
{
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!
    {
        return goddess[row]
    }
}
