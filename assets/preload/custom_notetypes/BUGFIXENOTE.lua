function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'BUGFIXENOTE' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'BUGFIXENOTE'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.3'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth','0'); --Change amount of health to take when you miss like a fucking moron
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'BUGFIXENOTE' then
		characterPlayAnim('dad', 'idle', true);
		setProperty('dad.specialAnim', true);

	end
end
