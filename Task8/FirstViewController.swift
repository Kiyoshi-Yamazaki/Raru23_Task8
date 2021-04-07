//
//  FirstViewController.swift
//  Task8
//
//  Created by 山崎喜代志 on 2021/03/30.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet private weak var sliderValueLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!

    private var appDelegate: AppDelegate? {
        UIApplication.shared.delegate as? AppDelegate
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateLabel()
    }

    private func updateLabel() {
        guard let sliderValue = appDelegate?.sliderValue else { return }
        sliderValueLabel.text = String(sliderValue)
    }

    @IBAction private func sliderAction(_ sender: Any) {
        appDelegate?.sliderValue = slider.value
        updateLabel()
    }
}
