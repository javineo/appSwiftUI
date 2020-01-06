
//
//  StatsRow.swift
//  appSwiftUI
//
//  Created by Javi on 06/01/2020.
//  Copyright © 2020 Javi. All rights reserved.
//

import SwiftUI

struct StatsRow: View {
    
    var statKey:String
    var statValue:String
    
    var body: some View {
        HStack(alignment: .center) {
            Text(statKey + ":")
                .font(.system(size:35))
                .fontWeight(.bold)
                .padding(.leading,40)
            Text(statValue)
                .font(.system(size:30))
                .fontWeight(.ultraLight)
                .padding(.trailing,40)
            Spacer()
            
        }.padding(.bottom,10)
    }
}

struct StatsRow_Previews: PreviewProvider {
    static var previews: some View {
        StatsRow(statKey: "Edad", statValue: "44")
    }
}
