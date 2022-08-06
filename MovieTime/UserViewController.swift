//
//  UserViewController.swift
//  MovieTime
//
//  Created by Cambrian on 2022-07-27.
//

import UIKit
import CoreData

class UserViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    
    var users: [Users]!
    
    var persistentContainer: NSPersistentContainer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let  user = Users(entity: Users.entity(), insertInto: persistentContainer.viewContext)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        let getContext = persistentContainer.viewContext
        getContext.perform {
            let user = Users(context: getContext)
                user.name = self.userNameTextField.text
                 
                
                do {
                    try getContext.save()
                    self.users.append(user)
                } catch {
                    getContext.rollback()
                }
            
        }
    }
    

}
