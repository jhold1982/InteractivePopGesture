//
//  ContentView.swift
//  InteractivePopGesture
//
//  Created by Justin Hold on 10/11/23.
//

import SwiftUI

struct ContentView: View {
	@State private var isEnabled = false
    var body: some View {
        // Sample View
		FullSwipeNavigationStack {
			List {
				Section("Sample Header") {
					NavigationLink("Full Swipe View") {
						List {
							Toggle("Full Swipe", isOn: $isEnabled)
								.enableFullSwipePop(isEnabled)
						}
						.navigationTitle("Full Swipe View")
					}
					
					NavigationLink("Leading Swipe View") {
						Text("")
							.navigationTitle("Leading Swipe View")
					}
				}
			}
			.navigationTitle("Full Swipe Pop")
		}
    }
}

#Preview {
    ContentView()
}
