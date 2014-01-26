
	-- Require Lua Class System
	LCS	= require("LCS")

	-- Create class
	Playfield	= LCS.class({ w = 6, h = 20, layers = 1, field = {} })


	--- Initialize an empty playfield
	-- Sets up playfield of specified size and layer count
	-- @param width		Width of playfield
	-- @param height	Height of playfield
	-- @param layers	Layers in playfield (generally 1 but who knows)
	function Playfield:init(width, height, layers)

		-- Check arguments
		if width then
			self.w	= width
		end

		if height then
			self.h	= height
		end

		if layers then
			self.layers	= layers
		end


		-- Initialize loop vars
		local i, x, y	= 0, 0, 0

		-- Fill all fields with 0s
		for i = 1, self.layers do

			-- Create empty field
			self.field[i]	= {}

			for x = 1, self.w do
				-- Create empty row
				self.field[i][x]	= {}

				for y = 1, self.h do
					-- Fill row value with 0
					self.field[i][x][y]	= 0;
				end
			end
		end

	end


	--- Prints out a text representation of a playfield
	--
	function Playfield:describe()

		-- Loop variables
		local i, x, y	= 0, 0, 0

		local output	= ""

		-- Build string of playfield values
		for i = 1, self.layers do
			output	= output .. string.format("Field #%d:\n", i)
			for y = 1, self.h do
				for x = 1, self.w do
					output	= output .. string.format("%2d, ", self.field[i][x][y])
				end
				output	= output .. "\n"
			end

			output	= output .. "\n"
		end

		return output
	end




	--- Checks if a piece can fit in the playfield at a certain position.
	--
	-- @param piece		Piece to place
	-- @param x			X position
	-- @param y			Y position
	-- @param layer		Layer
	-- @return	true/false if the place can be placed in the playfield
	function Playfield:canPlacePiece(piece, x, y, layer)

	end


	--- Places a piece into the playfield.
	--
	-- @param piece		Piece to place
	-- @param x			X position
	-- @param y			Y position
	-- @param layer		Layer
	-- @return	true/false if piece was placed into the playfield
	function Playfield:placePiece(piece, x, y, layer)
		if not self:canPlacePiece(piece, x, y, layer) then
			-- Error
			return false
		end


	end


	--- Checks if a piece can fit in the playfield at a certain position
	-- Maybe returns an array of matches + X/Y pairs or nil if none?
	-- @return ?
	function Playfield:checkForClears()

	end








	-- Return class/module

	return Playfield