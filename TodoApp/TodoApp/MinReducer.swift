//
//  MinReducer.swift
//  TodoApp
//
//  Created by juan.lopez on 15/08/23.
//

import Foundation
import LPReducer

struct MainReducer: Reducer {
    enum Action {
        case onAppear
        case tapButton
    }
    
    struct State: Equatable, StateProtocol {
        var refreshState: RefreshState = RefreshState()
        var staticState: StaticState = StaticState()
        
        struct StaticState: Equatable {
            var numberOfRows = 0
        }
        
        struct RefreshState: Equatable {
            var name: String = ""
        }
    }
    
    func reduce(into state: inout State, _ action: Action) -> LPReducer.Operation<Action> {
        switch action {
        case .onAppear:
            print(state.refreshState)
        case .tapButton:
            print(state.refreshState.name)
        }
        return .none
    }
}
