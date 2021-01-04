-- ============================================================= --
-- GRASS MOWING MOD
-- ============================================================= --
GrassMowing = {};

addModEventListener(GrassMowing);

function GrassMowing:loadMap(name)
	--print("Load Mod: 'Grass Mowing'")
	self.initialised = false
end

function GrassMowing:deleteMap()
end

function GrassMowing:mouseEvent(posX, posY, isDown, isUp, button)
end

function GrassMowing:keyEvent(unicode, sym, modifier, isDown)
end

function GrassMowing:draw()
end

function GrassMowing:update(dt)
	if not self.initialised then
		for name, fruitType in pairs(g_fruitTypeManager.nameToFruitType) do
			if name == "GRASS" then
				fruitType.minHarvestingGrowthState = 1
				fruitType.minForageGrowthState = 1
			end
		end
		self.initialised = true
	end
end