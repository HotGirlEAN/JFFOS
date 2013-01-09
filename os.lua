term.clear()
term.setCursorPos(1,1)

function drawPixel ( THATNUMBER, THISNUMBER, ncol, rcol )
	ox, oy = term.getCursorPos()
	term.setCursorPos( THATNUMBER, THISNUMBER )
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
				if type(ix) == "number" and type(iz) == "number" then
					drawPixel(ix, iy, ncsl, ncsl)
				end
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
	term.setTextColor(colors.white)
end

cls()

