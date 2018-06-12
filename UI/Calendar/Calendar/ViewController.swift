//
//  ViewController.swift
//  Calendar
//
//  Created by wannabewize on 2018. 6. 13..
//  Copyright © 2018년 wannabewize. All rights reserved.
//

import UIKit
import JTAppleCalendar

class DayCell: JTAppleCell {
    @IBOutlet weak var dateLabel: UILabel!
}

class ViewController: UIViewController, JTAppleCalendarViewDelegate, JTAppleCalendarViewDataSource {
    let formatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func calendar(_ calendar: JTAppleCalendarView, willDisplay cell: JTAppleCell, forItemAt date: Date, cellState: CellState, indexPath: IndexPath) {
        
    }
    
    func calendar(_ calendar: JTAppleCalendarView, cellForItemAt date: Date, cellState: CellState, indexPath: IndexPath) -> JTAppleCell {
        let cell = calendar.dequeueReusableJTAppleCell(withReuseIdentifier: "DayCell", for: indexPath) as! DayCell
        cell.dateLabel.text = formatter.string(from: date)
        return cell
    }
    
    
    func configureCalendar(_ calendar: JTAppleCalendarView) -> ConfigurationParameters {
        formatter.dateStyle = .short
        let start = formatter.date(from: "01/01/2018")!
        let end = formatter.date(from: "12/31/2018")!
        let parameter = ConfigurationParameters(startDate: start, endDate: end)
        return parameter
    }
}

