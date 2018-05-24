//: Playground - noun: a place where people can play

import Foundation
/*
var dict = ["project4": ["subproject2": ["method1"], "subproject1": ["method1"]],
            "project2": ["subproject1": ["method2", "method1", "method5", "method3", "method4"]],
            "project3": ["subproject2": ["method2", "method1"], "subproject1": ["method1"]]]

for projectKey in dict.keys.sorted() {
    print("--\(projectKey)")
    for subProjectKey in dict[projectKey]!.keys.sorted() {
        print("----\(subProjectKey)")
        for methodKey in ((dict[projectKey]!)[subProjectKey]!).sorted() {
            print("------\(methodKey)")
        }
    }
}
*/
/*
func countAPI(calls: [String]) -> [String] {
    var treeDictionary: [String:AnyObject] = [:]
    var resultArray: [String] = []
    
    //Construct the tree
    for call in calls {
        for component in call.components(separatedBy: "/") {
            if component.count > 0 {
                print(component)
                if component.contains("project") {
                    treeDictionary[component] =
                }
            }
        }
    }
    
    //Sort the tree
    
    return resultArray
}

 */

var projArray = [
    "/project1/subproject1/method1",
    "/project2/subproject1/method1",
    "/project1/subproject1/method1",
    "/project1/subproject2/method1",
    "/project1/subproject1/method2",
    "/project1/subproject2/method1",
    "/project2/subproject1/method1",
    "/project1/subproject2/method1"
    ]

struct ProjectNode {
    var title: String!
    var times:Int = 0
    var left: ProjectNode?
    var right: ProjectNode?
}
