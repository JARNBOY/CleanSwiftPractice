//
//  MainInteractor.swift
//  CleanSwiftPractice
//
//  Created by Papon Supamongkonchai on 20/7/2565 BE.
//  Copyright (c) 2565 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol MainBusinessLogic
{
  func goHome(request: Main.Login.Request)
}

protocol MainDataStore
{
  var name: String { get set }
}

class MainInteractor: MainBusinessLogic, MainDataStore
{
    var presenter: MainPresentationLogic?
    var worker: MainWorker?
    var name: String = ""
    
    // MARK: Do something
    
    func goHome(request: Main.Login.Request)
    {
        name = request.name
        switch name.isEmpty {
        case false:
            let response = Main.Login.Response(success: true)
            presenter?.presentSomething(response: response)
        default:
            let response = Main.Login.Response(success: false)
            presenter?.presentSomething(response: response)
        }
    }
}
