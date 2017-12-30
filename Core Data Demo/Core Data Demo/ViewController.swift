//
//  ViewController.swift
//  Core Data Demo
//
//  Created by Matson on 3/9/17.
//  Copyright © 2017 Matson. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDel:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        let context:NSManagedObjectContext = appDel.managedObjectContext
        /*
        
        var newUser = NSEntityDescription.insertNewObjectForEntityForName("Users", inManagedObjectContext: context)
        
        newUser.setValue("Aaron", forKey: "username")
        
        newUser.setValue( "pass123", forKey: "password")
        
        
        do {
            
            try context.save()
            
        }catch{
            
            print("there was a problem")
        
        }
*/
        
        let request = NSFetchRequest(entityName: "Users")
        
        //request.predicate = NSPredicate(format: "username = %@", "Claire")
        
        request.returnsObjectsAsFaults = false
        
        do {
        
        let results = try context.executeFetchRequest(request)
            
            if results.count > 0 {
                
                for result in results as! [NSManagedObject] {
                    
                    /*context.deleteObject(result)
                    
                    //result.setValue("Ralphie", forKey: "username")
                    
                    do {
                        
                        try context.save()
                        
                    }catch{
                        
                    }
                    
                    */
                    
                    if let username = result.valueForKey("username") as? String {
                    
                        print(username)
                        
                        
                    }
                    
                }
                
            }
            
        }catch{
        
        print("fetch Failed")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

