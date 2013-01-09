term.clear()
term.setCursorPos(1,1)

function drawPixel ( nx, ny, ncol, rcol )
	ox, oy = term.getCursorPos()
	term.setCursorPos( nx, ny )
	term.setBackgroundColor(ncol)
	write(" ")
	term.setBackgroundColor(rcol)
	term.setCursorPos( ox, oy )
end

function expandFullAni ( ncsl )
	scrWid, scrHei = term.getSize()
	for i=1, scrWid do
		for ix=1, i do
			for iz=1, i do
				drawPixel(ix, iy, ncsl, ncsl)
			end
		end
		os.sleep(0.1)
	end
	term.setCursorPos(1,1)
end

function cls ()
	term.clear()
	term.setCursorPos(1,1)
	expandFullAni(colors.lightGray)
	