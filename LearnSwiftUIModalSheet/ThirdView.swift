//
//  ThirdView.swift
//  LearnSwiftUIModalSheet
//
//  Created by Neeraj Sharma on 11/2/20.
//

import SwiftUI

struct ThirdView: View {
    @Binding var showSheetPresented: Bool
    
    var body: some View {
        
        Text("I am ThirdView")
            
            .navigationBarTitle(Text("Third"))
            .navigationBarItems(trailing: Button(action: {
                print("ThirdView NavigationBarItems trailing 'Done' button tapped ")
                showSheetPresented.toggle()
            }, label: {
                Text("Done")
            }))
            
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView(showSheetPresented: .constant(true))
    }
}
