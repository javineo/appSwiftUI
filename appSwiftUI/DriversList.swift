//
//  DriversList.swift
//  appSwiftUI
//
//  Created by Javi on 06/01/2020.
//  Copyright © 2020 Javi. All rights reserved.
//

import SwiftUI

struct DriversList: View {
    var body: some View {
        NavigationView {
            List(drivers) {
                driver in
                NavigationLink(destination: DriverDetail(driver: driver)) {
                    DriverRow(driver: driver)
                }.navigationBarTitle(Text("Formula 1 2019"),displayMode: .large)
            }
            
        }
    }
}
struct DriversList_Previews: PreviewProvider {
    static var previews: some View {
        DriversList()
    }
}
