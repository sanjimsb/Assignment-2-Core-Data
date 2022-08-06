//
//  MovieViewController.swift
//  MovieTime
//
//  Created by Cambrian on 2022-07-27.
//

import UIKit
import CoreData

class MovieViewController: UIViewController {
    
    var persistentContainer: NSPersistentContainer!
    var movies: [Movies]!
    var user: Users!

    @IBOutlet weak var movieNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        let getContext = persistentContainer.viewContext
        getContext.performAndWait {
            let movie = Movies(context: getContext)
            movie.name = self.movieNameTextField.text
            movie.user = user
            user.addToMovies(movie)
            
            do {
                try getContext.save()
                self.movies?.append(movie)
            } catch {
                getContext.rollback()
            }
        }
    }
    

}
