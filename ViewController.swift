//
//  ViewController.swift
//  TPANoronha
//
//  Created by Fabio Lindemberg on 22/10/18.
//  Copyright © 2018 Fábio Lindemberg. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var edDataInicial: UITextField!
    @IBOutlet weak var edDataFInal: UITextField!
    
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setConfigDatePicker(txtDatePicker: edDataInicial)
        setConfigDatePicker(txtDatePicker: edDataFInal)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setConfigDatePicker(txtDatePicker: UITextField){
        //Formate Date
        datePicker.datePickerMode = .date
        
        //ToolBar
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(title: "Ok", style: .plain, target: self, action: #selector(donedatePicker));
        let cancelButton = UIBarButtonItem(title: "Cancelar", style: .plain, target: self, action: #selector(cancelDatePicker));
        
        toolbar.setItems([cancelButton,spaceButton,doneButton], animated: false)
        
        txtDatePicker.inputAccessoryView = toolbar
        txtDatePicker.inputView = datePicker
        
    }

    @objc func donedatePicker(){
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        if  edDataInicial.isFirstResponder {
            edDataInicial.text = formatter.string(from: datePicker.date)
        }else if edDataFInal.isFirstResponder {
            edDataFInal.text = formatter.string(from: datePicker.date)
        }
        self.view.endEditing(true)
    }
    
    @objc func cancelDatePicker(){
        self.view.endEditing(true)
    }
}



