//
//  FirstView.swift
//  LearnSwiftUIModalSheet
//
//  Created by Neeraj Sharma on 11/2/20.
//

import SwiftUI

struct FirstView: View {

    @State var showSheetPresented = false

    var body: some View {
        VStack {

            Text("I am in FirstView")

            Button(action: {
                print("Sound")
                showSheetPresented.toggle()
            }, label: {
                Text("Second View")
            })
            .sheet(isPresented: $showSheetPresented, content: {
                SecondView(showSheetPresented: $showSheetPresented)
            })
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
