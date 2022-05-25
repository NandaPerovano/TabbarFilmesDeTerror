//
//  ConfiguracaoViewController.swift
//  TabbarFilmesDeTerror
//
//  Created by Fernanda Perovano on 15/05/22.
//

import UIKit

class ConfiguracaoViewController: UIViewController {
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var pickerViewHumor: UIPickerView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var datePickerLabel: UILabel!
    @IBOutlet weak var proximaDataLabel: UILabel!
    
    var humores:[String] = ["Estou Feliz", "Estou triste", "Estou com medo", "Estou ansioso", "Estou desapontado"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        proximaDataLabel.text = " Data da próxima sessão:"
    }
    
    @IBAction func assistirProximoFilme(_ sender: Any) {
        
        let dataEHora = datePicker.date
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC-3")
        
        let stringData = dateFormatter.string(from: dataEHora)
        datePickerLabel.text = stringData
    }
}

extension ConfiguracaoViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return humores.count
    }
}

extension ConfiguracaoViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return humores[row]
    }
}

