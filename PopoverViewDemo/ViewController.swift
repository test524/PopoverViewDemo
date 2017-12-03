//
//  ViewController.swift
//  PopoverViewDemo
//
//  Created by Pavan Kumar Reddy on 14/11/17.
//  Copyright © 2017 Pavan. All rights reserved.
//

import UIKit

class ViewController: UIViewController  , UIPopoverPresentationControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func actSave(_ sender: UIBarButtonItem)
    {
        let alertController = UIAlertController(title: "Appcoda", message: "Message in alert dialog", preferredStyle: .alert)
        
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive, handler: {(alert :UIAlertAction!) in
            print("Delete button tapped")
        })
        alertController.addAction(deleteAction)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {(alert :UIAlertAction!) in
            print("OK button tapped")
        })
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func actDone(_ sender: UIBarButtonItem)
    {
        let alertController = UIAlertController(title: "Appcoda", message: "Message in alert dialog", preferredStyle: .actionSheet)
        
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive, handler: {(alert :UIAlertAction!) in
            print("Delete button tapped")
        })
        alertController.addAction(deleteAction)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {(alert :UIAlertAction!) in
            print("OK button tapped")
        })
        alertController.addAction(okAction)
        
        alertController.popoverPresentationController?.sourceView = view
        alertController.popoverPresentationController?.barButtonItem = sender
        
        present(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func actAction(_ sender: UIButton)
    {
        
        let alertController = UIAlertController(title: "Appcoda", message: "Message in alert dialog", preferredStyle: .actionSheet)
        
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive, handler: {(alert :UIAlertAction!) in
            print("Delete button tapped")
        })
        alertController.addAction(deleteAction)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {(alert :UIAlertAction!) in
            print("OK button tapped")
        })
        alertController.addAction(okAction)
        
        alertController.popoverPresentationController?.sourceView = view
        alertController.popoverPresentationController?.sourceRect = sender.frame
        
        present(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func actpopover(_ sender: UIBarButtonItem)
    {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "PopoverViewController")
        vc.modalPresentationStyle = .popover
        
        //Optional
        //vc.preferredContentSize = CGSize.init(width: UIScreen.main.bounds.size.width, height: 400)
        
        let popover: UIPopoverPresentationController = vc.popoverPresentationController!
        popover.barButtonItem = sender
        popover.delegate = self
        present(vc, animated: true, completion:nil)
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle
    {
        return UIModalPresentationStyle.none
    }
    
    func popoverPresentationControllerShouldDismissPopover(_ popoverPresentationController: UIPopoverPresentationController) -> Bool
    {
        return true
    }
    
    @IBAction func actPresentt(_ sender: UIBarButtonItem)
    {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "presentVC")
        vc.modalPresentationStyle = .formSheet
        present(vc, animated: true, completion: nil)
    }
    
}

