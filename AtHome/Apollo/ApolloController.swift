//
//  ApolloController.swift
//  AtHome
//
//  Created by pyre on 28/06/2018.
//  Copyright © 2018 pyre. All rights reserved.
//

import Foundation
import Apollo

class ApolloController {
    
    //MARK: Apollo Client
    
    let apolloClient = ApolloClient(url: URL(string : "https://woodbox.io:5000/graphql")!)
    
    //MARK: Public query methods
    
    public func getAllModules(callbackFunction: @escaping ([Module])->() ){
        var finalModules : [Module] = []
        
        apolloClient.fetch(query: AllModulesQuery()){
            (result, error) in
            print(error ?? "")
            let modules = result?.data?.allModules
            for module in modules!{
                if module != nil {
                    let currentModule = Module(id: Int((module?.id)!)!, name: (module?.name)!, location: (module?.location)!, type: (module?.type)!)
                    finalModules.append(currentModule)
                }
            }
            callbackFunction(finalModules)
        }
    }
}
