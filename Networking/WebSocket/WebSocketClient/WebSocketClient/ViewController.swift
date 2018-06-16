//
//  ViewController.swift
//  WebSocketClient
//
//  Created by Jaehoon Lee on 2018. 6. 15..
//  Copyright © 2018년 Jaehoon Lee. All rights reserved.
//

import UIKit
import Starscream

let address = "ws://10.207.40.19:8080"

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!
    var socket: WebSocket!
    
    @IBAction func sendMessage(_ sender: Any) {
        guard socket != nil else {
            print("Not Connected!")
            return
        }
        socket.write(string: textField.text!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: address) {
            socket = WebSocket.init(url: url)
            
            socket.onConnect = {
                print("on Connected")
                self.textView.text = nil
            }
            
            socket.onText = { (message: String) in
                print("onText!")
                self.textView.insertText(message + "\n")
            }
            
            socket.onData = { (data: Data) in
                print("onData \(data)")
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if socket != nil {
            socket.connect()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

