//
//  SecondViewController.swift
//  Task8
//
//  Created by 山崎喜代志 on 2021/03/30.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet private weak var sliderValueLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!

    private var sliderValueNum: Float = 0

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            sliderValueNum = delegate.sliderValue
            slider.value = sliderValueNum
            updateLabel()
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
        delegate.sliderValue = sliderValueNum
        }
    }

    private func updateLabel() {
        sliderValueLabel.text = String(sliderValueNum)
    }

    @IBAction private func sliderAction(_ sender: Any) {
        sliderValueNum = slider.value
        updateLabel()
    }
}
