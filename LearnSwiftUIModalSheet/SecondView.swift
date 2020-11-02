//
//  SecondView.swift
//  LearnSwiftUIModalSheet
//
//  Created by Neeraj Sharma on 11/2/20.
//

import SwiftUI

struct SecondView: View {
    @Binding var showSheetPresented: Bool
    var body: some View {
        
        NavigationView {
            VStack {
                Text("I am in SecondView")
                    .navigationBarTitle(Text("Second"))
                    .navigationBarItems(trailing: Button(action: {
                        print("SecondView NavigationBarItems trailing 'Done' button tapped")
                        showSheetPresented.toggle()
                    }, label: {
                        Text("Done")
                    }))
                
                NavigationLink(destination: ThirdView(showSheetPresented: $showSheetPresented), label: {
                    Text("Show ThirdView")
                })
                
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(showSheetPresented: .constant(true))
    }
}
