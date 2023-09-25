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
					Text("Mostrar Alerta")
				}
				.buttonStyle(.bordered)

				Spacer()
			}
			Spacer()
		}
		.alert("Alerta", isPresented: $showingAlert, actions: {
			Button(role: .destructive) {
				dismissAction()
			} label: {
				Text("Voltar")
			}
			
			Button(role: .cancel) {
				showingAlert.toggle()
			} label: {
				Text("Cancelar")
			}

		}, message: {
			Text("Isso é um alerta")
		})
		.navigationTitle("Swift UI")
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
		SwiftUIView( dismissAction: {})
    }
}
