//
//  ViewController.swift
//  SiriShortcutsDemo
//
//  Created by DouKing on 2018/9/21.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    setupIntents()
  }

  func setupIntents() -> Void {
    let id = "DouKing.SiriShortcutsDemo.SiriShortcuts.sayHi"
    let activity = NSUserActivity(activityType: id)
    activity.title = "Say Hi"
    activity.userInfo = ["speech": "hi"]
    activity.isEligibleForSearch = true
    activity.isEligibleForPrediction = true
    activity.persistentIdentifier = NSUserActivityPersistentIdentifier(id)
    view.userActivity = activity
    activity.becomeCurrent()
  }

  public func sayHi() {
    let alert = UIAlertController(title: "Hi There!", message: "Hey!dsadlasdl;a", preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    present(alert, animated: true, completion: nil)
  }
}

