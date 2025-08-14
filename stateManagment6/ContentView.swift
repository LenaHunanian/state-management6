//
//  ContentView.swift
//  stateManagment6
//
//  Created by Lena Hunanian on 11.08.25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var settings : [Settings] = [
        Settings(name: "Wi-Fi", isEnabled: true),
        Settings(name: "General", isEnabled: false),
        Settings(name: "Apps", isEnabled: true),
        Settings(name: "Notifications", isEnabled: true)
    ]

    var body: some View {
        
            List($settings){ $setting in
               Toggle(setting.name, isOn: $setting.isEnabled)
                        .opacity(setting.isEnabled ? 1 : 0.5)
            }
        }
    }



#Preview {
    ContentView()
}
