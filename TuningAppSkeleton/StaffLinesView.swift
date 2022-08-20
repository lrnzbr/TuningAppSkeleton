//
//  StaffLinesView.swift
//  TuningAppSkeleton
//
//  Created by Lorenzo Brown on 8/4/22.
//

import SwiftUI

let staffHeight:CGFloat = 8

struct StaffLinesView: View {
    var body: some View {
		HStack(spacing: 0) {
			Divider().foregroundColor(.black)
		VStack(spacing: staffHeight) {
				Divider().foregroundColor(.black)
				Divider().foregroundColor(.black)
				Divider().foregroundColor(.black)
				Divider().foregroundColor(.black)
				Divider().foregroundColor(.black)
			}
			Divider().foregroundColor(.black)
		}.frame( height: 40)
	}
}

struct StaffView_Previews: PreviewProvider {
    static var previews: some View {
        StaffLinesView()
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
