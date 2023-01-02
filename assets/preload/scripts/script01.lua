
function onUpdate(elpased)
   for i=0,3 do
   noteTweenAlpha(i+0, i, math.floor, 0.0001)
   end
end

function onTimerCompleted(tag)
if tag == 'bfnotes' then
noteTweenAlpha("note movement1", 4, 0.80, 0.5, "linear");
noteTweenAlpha("note movement2", 5, 0.80, 0.5, "linear");
noteTweenAlpha("note movement3", 6, 0.80, 0.5, "linear");
noteTweenAlpha("note movement4", 7, 0.80, 0.5, "linear");

end
  end



-- made by Turbo (me) if you steal without credit, i will sue you
