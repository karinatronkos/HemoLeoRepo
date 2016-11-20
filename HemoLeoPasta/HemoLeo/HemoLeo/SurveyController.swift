//
//  SurveyController.swift
//  HemoLeo
//
//  Created by Gabriel Oliveira on 05/11/16.
//  Copyright © 2016 Bepid. All rights reserved.
//

import UIKit
import CareKit

class SurveyController: UIViewController {
    @IBOutlet weak var texxt: UITextField!
    var event: OCKCarePlanEvent! = nil
    var resultString = ""
    var resultArray: Array<String> = ["", "", "", "", ""]
    var index = 0
    var sliderValue = 0
    var esqArray: Array<UIButton> = []
    var dirArray: Array<UIButton> = []
    
    @IBOutlet weak var ombroEsq: UIButton!
    @IBOutlet weak var cotEsq: UIButton!
    @IBOutlet weak var virilhaEsq: UIButton!
    @IBOutlet weak var joelhoEsq: UIButton!
    @IBOutlet weak var tronozeloEsq: UIButton!
    
    @IBOutlet weak var ombroDir: UIButton!
    @IBOutlet weak var cotDir: UIButton!
    @IBOutlet weak var virilhaDir: UIButton!
    @IBOutlet weak var joelhoDir: UIButton!
    @IBOutlet weak var tornozeloDir: UIButton!
    
    
    private var assessmentManager: AssessmentsManager? = nil
    private let symptomTrackerModel = SymptomTrackerModel.sharedSymptomTracker

    override func viewDidLoad() {
        super.viewDidLoad()
        
        esqArray = [ombroEsq, cotEsq, virilhaEsq, joelhoEsq, tronozeloEsq]
        dirArray = [ombroDir, cotDir, virilhaDir, joelhoDir, tornozeloDir]
        
        setArrayBtn(dirArray, bool: false)
        setArrayBtn(esqArray, bool: true)
        
        assessmentManager = symptomTrackerModel.getAssessmentManager()
        
    }
    
    @IBAction func save(_ sender: UIButton) {
        let popup = PopupController.create(self)
        
        let container = PopUpViewController.instance()
        container.closeHandler = { _ in
            self.sliderValue = PopUpViewController.sliderValue
            print(self.sliderValue)
            popup.dismiss()
            self.saveResult()
        }
        
        let _ = popup.show(container)
    }
    
    func saveResult() {
        let activityType = ActivityType(rawValue: event.activity.identifier)
        let assessment = assessmentManager!.activityWithType(type: activityType!)
        var result: OCKCarePlanEventResult!
        
        if self.countNonEmptyElements() == 1 {
            resultString = resultArray[index]
            
        } else {
            resultString = "\(self.countNonEmptyElements()) lugares"
            
        }
        
        result = assessment?.buildResultForCarePlanEvent(event: event, taskResult: resultString)
        
        symptomTrackerModel.completeEvent(event: event, withResult: result!)
        
        self.dismiss(animated: false, completion: nil)
        
    }

    @IBAction func segmentedControlAction(_ sender: ADVSegmentedControl) {
        let index = sender.selectedIndex
        
        if index == 0 {
            setArrayBtn(dirArray, bool: false)
            setArrayBtn(esqArray, bool: true)
            
        } else {
            setArrayBtn(dirArray, bool: true)
            setArrayBtn(esqArray, bool: false)
            
        }
        
    }
    
    @IBAction func ombroAction(_ sender: UIButton) {
        if sender.isSelected == false {
            resultArray[sender.tag] = sender.accessibilityIdentifier!
            sender.isSelected = true
            
        } else {
            resultArray[sender.tag] = ""
            sender.isSelected = false
        }
    }
    
    func setArrayBtn(_ array: Array<UIButton>, bool: Bool) {
        for btn in array {
            btn.isEnabled = bool
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func countNonEmptyElements() -> Int {
        var count: Int = 0
        var j = 0
            
        for i in resultArray {
            if i != "" {
                count += 1
                index = j
                
            } else {
                j += 1
                
            }
        }
            
        return count
    }
}