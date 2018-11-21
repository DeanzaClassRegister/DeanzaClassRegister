//
//  CalendarVC.swift
//  DeanzaClassRegister
//
//  Created by Alvin Lin on 2018/11/21.
//  Copyright © 2018 Alvin Lin. All rights reserved.
//

import UIKit

class CalendarVC: MenuBaseViewController {
    
    let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentSize.height = 16 * 70
        view.backgroundColor = .white
        return view
    }()
    
    let timeView: CalendarTimeView = {
        let view = CalendarTimeView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let dayView: CalendarDayView = {
        let view = CalendarDayView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScrollView()
        setupTimeView()
        setupDayView()
        
    }
    
    private func setupScrollView() {
        view.addSubview(scrollView)
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        scrollView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    }
    
    private func setupTimeView() {
        scrollView.addSubview(timeView)
        timeView.frame = CGRect(x: 0, y: 44, width: 70, height: scrollView.contentSize.height)
//        timeView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        timeView.topAnchor.constraint(equalTo: view.topAnchor, constant: 88).isActive = true
//        timeView.heightAnchor.constraint(equalToConstant: scrollView.contentSize.height).isActive = true
//        timeView.widthAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    private func setupDayView() {
        scrollView.addSubview(dayView)
        dayView.topAnchor.constraint(equalTo: view.topAnchor, constant: 88).isActive = true
        dayView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        dayView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        dayView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
    }
    
    
}







