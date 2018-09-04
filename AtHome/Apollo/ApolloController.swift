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
    
    //let apolloClient = ApolloClient(url: URL(string : "http://lferry.xyz:8080/graphql")!)
    let apolloClient = ApolloClient(url: URL(string : "https://woodbox.io:5000/graphql")!)
    
    //MARK: Public query methods
    
    public func apiGetAllModules(callbackFunction: @escaping ([Module])->() ){
        
        apolloClient.fetch(query: AllModulesQuery()){
            (result, error) in
            
            print(error ?? "")
            
            var finalModules : [Module] = []
            let modules = result?.data?.allModules
            
            if (modules != nil) {
                for module in modules!{
                    if module != nil {
                        let currentModule = Module(id: Int((module?.id)!)!, name: (module?.name)!, location: (module?.location)!, type: (module?.type)!, samples: nil)
                        finalModules.append(currentModule)
                    }
                }
                
            }
            callbackFunction(finalModules)
        }
    }
    
    public func apiGetModuleById(moduleId : Int, callbackFunction: @escaping (Module?)->()) {
        apolloClient.fetch(query: GetModuleByIdQuery(id: String(moduleId))) {
            (result, error) in
            
            print("---------------------------")
            print(error ?? "")
            //print(result ?? "")
            
            let module = result?.data?.getModuleById
            var finalModule : Module
            
            if module != nil{
                finalModule = Module(id: Int((module?.id)!)!, name: (module?.name)!, location: (module?.location)!, type: (module?.type)!, samples: nil)

                var samples : [Sample] = []
                
                if module?.samples != nil {
                    for sample in (module?.samples)! {
                        var payload = self.convertToDictionary(text: (sample?.payload)!)
                        
                        samples.append(Sample(payload: Payload(unitMeasure: (payload?["unit_measure"])! as! String, name: (payload?["name"])! as! String, measure: (payload?["measure"])! as! String), date: (sample?.date)!))
                    }
                    finalModule.samples = samples
                }
                callbackFunction(finalModule)
            }
        }
    }
    
    private func convertToDictionary(text: String) -> [String: Any]? {
        if let data = text.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            } catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }

}
