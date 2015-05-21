//
//  GoddessInfo.swift
//  GoddessList
//
//  Created by xuhui on 15/5/18.
//  Copyright (c) 2015年 xuhui. All rights reserved.
//

import UIKit
import Social

class GoddessInfo:UIViewController {
    
    var imageName:String?
    var titleName:String?
    
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let name = imageName
        {
            img.image = UIImage(named: name)
        }
        
        self.title = titleName!
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func shareTapped(sender: AnyObject) {
        var controller:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.setInitialText("我刚刚通过女神APP分享了一位女神，大家快来看看吧！")
        controller.addImage(img.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
}