//
//  HomeViewController.swift
//  BaseAppFrameworkSwift
//
//  Created by Simple_Code on 2018/8/29.
//  Copyright © 2018年 AnyApp. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var dict = [String: AnyObject]()
        dict["name"] = "李明" as AnyObject
        dict["age"] = 30 as AnyObject
        UserInfoManager.update(userInfo: dict)
        
        print(UserInfoManager.userModel)
        print(UserInfoManager.userModel.name as Any)

        UserInfoManager.updateValue(value: "大明" as AnyObject, key: "name")
        print(UserInfoManager.userModel)
        print(UserInfoManager.userModel.name as Any)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
