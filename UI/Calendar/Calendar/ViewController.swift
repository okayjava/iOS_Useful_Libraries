//
//  ViewController.swift
//  Calendar
//
//  Created by wannabewize on 2018. 6. 19..
//  Copyright © 2018년 wannabewize. All rights reserved.
//

import UIKit
import CVCalendar

class ViewController: UIViewController, CVCalendarViewDelegate {
    @IBOutlet weak var calendarMode: UISegmentedControl!
    @IBOutlet weak var calendarView: CVCalendarView!

    
    @IBAction func viewModeChange(_ sender: UISegmentedControl) {
        calendarView.commitCalendarViewUpdate()
    }
    func presentationMode() -> CalendarMode {
        return calendarMode != nil && calendarMode.selectedSegmentIndex == 0 ? .monthView : .weekView
    }
    
    func firstWeekday() -> Weekday {
        return .sunday
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        calendarView.commitCalendarViewUpdate()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print( "frame :",calendarView.frame )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

