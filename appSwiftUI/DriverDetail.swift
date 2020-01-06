//
//  DriverDetail.swift
//  appSwiftUI
//
//  Created by Javi on 05/01/2020.
//  Copyright © 2020 Javi. All rights reserved.
//

import SwiftUI

struct DriverDetail: View {
    
    var driver: Driver
    
    var body: some View {
        VStack {
            Image(driver.team.imageName)
                .resizable()
                .frame(height:230)
            Image(driver.imageName)
            .resizable()
                .frame(width: 160,height:160)
                .clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(Color.white,lineWidth: 3))
                .shadow(radius: 18)
                .offset(x: 0, y: -65)
                .padding(.bottom, -55)
            
            Text(driver.name)
                .font(.system(size:45))
                .fontWeight(.bold)
                .padding(.bottom, 20)
            StatsRow(statKey: "Edad", statValue: String(driver.age))
            StatsRow(statKey: "Número", statValue: String(driver.number))
            StatsRow(statKey: "Lugar", statValue: driver.birthPlace)
            Spacer()
        }.edgesIgnoringSafeArea(.top)
        
    }
}

struct DriverDetail_Previews: PreviewProvider {
    static var previews: some View {
        DriverDetail(driver: drivers[2])
    }
}
