//
//  SwiftUIView.swift
//  UIStyles
//
//  Created by Breno Angelotti on 21/02/23.
//

import SwiftUI

struct SwiftUIView: View {
	@State var showingAlert: Bool = false
	
	var dismissAction: () -> Void
	
    var body: some View {
		VStack {
			Spacer()
			HStack {
				Spacer()
				Button {
					showingAlert.toggle()
				} label: {
					Text("show-alert")
				}
				.buttonStyle(.bordered)

				Spacer()
			}
			Spacer()
		}
		.alert("alert-title", isPresented: $showingAlert, actions: {
			Button(role: .destructive) {
				dismissAction()
			} label: {
				Text("return")
			}
			
			Button(role: .cancel) {
				showingAlert.toggle()
			} label: {
				Text("cancel")
			}

		}, message: {
			Text("alert-message")
		})
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
		SwiftUIView( dismissAction: {})
    }
}
