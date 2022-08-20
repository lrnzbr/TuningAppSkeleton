//
//  AssembledStaffView.swift
//  TuningAppSkeleton
//
//  Created by Lorenzo Brown on 8/4/22.
//

import SwiftUI

struct AssembledStaffView: View {
	let notes: [Note]?
	var body: some View {
		ZStack{
			ClefView()
			StaffLinesView()
			if notes != nil {
			NoteNameView(notes: notes!)
			HStack{
			ForEach(notes!){ note in
				AssembledNoteView(note: note)
			}
			}
			}
		}
    }
}

struct AssembledStaffView_Previews: PreviewProvider {
    static var previews: some View {
		AssembledStaffView(notes: [A5])
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
