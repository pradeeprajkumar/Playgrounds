//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Sub Class class with Cancel functionality
@objc class  MyDispatchQueue: DispatchQueue {
    
    @synchronise var yetToRunTasks: [AnyObject] = []
    
    override init() {
        super.init()
    }
    
    func cancelTask(token:String, completionClosure: (AnyObject)->Void) {
        //Cancel the task
        //Get all tasks scheduled, based on the token value
        if yetToRunTasks.contains(where: token) {
            //Remove the token array
            yetToRunTasks.remove(token)
        }
        completionClosure("Success")
    }
    
    func scheduleTask(time: DispatchTime, taskClosure: (AnyObject)->Void)-> String {
        //Success return time
        //Create a task, returns a token
        yetToRunTasks.append("token")
        //Maintain the reference
        DispatchQueue.main.asyncAfter(deadline: time, execute: {
            if !yetToRunTasks.contains(where: token) {
                //Not Valid
            }
            else {
                //Valid
                taskClosure("Completed")
            }
        })
    }
    
    func getAllScheduledTasks() -> [String] {
        
    }
}

//In our class

for _ in 0...5 {
    self.performSelectorInBackground(#selector: addTasks)
}


for _ in 0...5 {
    self.performSelectorInBackground(#selector: cancelTasks)
}

func addTasks() {
    guard let token = sceduleTask(time, {(object) in
        //API fetching closure
    }) {
        //Successfully scheduled
    } else {
        //Error creating task
    }

}



cancelTask(token: token, completionClosure: { in
    //Show successfully closed
})

