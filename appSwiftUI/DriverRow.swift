//
//  DriverRow.swift
//  appSwiftUI
//
//  Created by Javi on 06/01/2020.
//  Copyright © 2020 Javi. All rights reserved.
//

import SwiftUI

struct DriverRow: View {
    
    var driver: Driver
    
    var body: some View {
        HStack {
            Image(driver.imageName)
                .resizable()
                 .frame(width: 60,height:60)
                .clipShape(Circle())
                .background(Circle().foregroundColor(driver.team.color))
                .padding(.leading, 10)
            Text(driver.name)
                .padding(.leading, 10)
                .font(.largeTitle)
            Spacer()
            
        }
    }
}

struct DriverRow_Previews: PreviewProvider {
    static var previews: some View {
        DriverRow(driver: drivers[4]).previewLayout(.fixed(width: 450, height: 80))
        
    }
}
