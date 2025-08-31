-- Educational Brainrot Simulation
-- Demonstrates walk speed boosting in a safe environment

-- Player object
local Player = {
    name = "TestPlayer",
    walkSpeed = 16,  -- normal Roblox default
    stealing = false
}

-- Function to start stealing (simulated)
function Player:startStealing()
    self.stealing = true
    print(self.name .. " started stealing!")
    self.walkSpeed = 32  -- boost speed while stealing
    print("Walk speed increased to " .. self.walkSpeed)
end

-- Function to stop stealing (simulated)
function Player:stopStealing()
    self.stealing = false
    print(self.name .. " stopped stealing.")
    self.walkSpeed = 16  -- reset to normal
    print("Walk speed reset to " .. self.walkSpeed)
end

-- Simulate player actions
Player:startStealing()
wait(3)  -- simulate 3 seconds of stealing
Player:stopStealing()
