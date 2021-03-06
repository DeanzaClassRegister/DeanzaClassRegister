//
//  TabBarController.swift
//  DeanzaClassRegister
//
//  Created by Alvin Lin on 2018/10/27.
//  Copyright © 2018 Alvin Lin. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
        // Do any additional setup after loading the view.
    }
    
    private func setupTabBar() {
        tabBar.tintColor = maincolor
        let courseListVC = TableViewController()
        let courseImage = UIImage(named: "courses")
        courseListVC.tabBarItem = UITabBarItem(title: "Course", image: courseImage, tag: 0)
        let navCourseVC = UINavigationController(rootViewController: courseListVC)
        
        let calendarVC = CalendarVC()
        let caledarImage = UIImage(named: "calendar")
        calendarVC.tabBarItem = UITabBarItem(title: "Calendar", image: caledarImage, tag: 1)
//        calendarVC.baseController = courseListVC
        let navCalendarVC = UINavigationController(rootViewController: calendarVC)
        
        let controllers = [navCourseVC, navCalendarVC]
//        self.viewControllers = controllers.map {
//            UINavigationController(rootViewController: $0)
//        }
        self.viewControllers = controllers
    }
    
    deinit {
        print("deinit tabbarVC")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
