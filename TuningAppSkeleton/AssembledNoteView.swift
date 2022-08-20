//
//  AssembledNoteView.swift
//  TuningAppSkeleton
//
//  Created by Lorenzo Brown on 8/19/22.
//

import SwiftUI

struct AssembledNoteView: View {
	let note: Note
    var body: some View {
		ZStack(alignment: .center) {
			ForEach(note.ledgerLines){ ledgerLine in
				LedgerLineView(offset: ledgerLine.offset)
			}
		WholeNoteView(note: note)


		}
	}
}

struct AssembledNoteView_Previews: PreviewProvider {
    static var previews: some View {
		AssembledNoteView(note: BFlat4)
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
