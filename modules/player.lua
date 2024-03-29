local love = require("love")

function Player(debugging)
  local SHIP_SIZE = 35
  local VIEW_ANGLE = math.rad(90)

  debugging = debugging or false
  
  return {
    x = love.graphics.getWidth() / 2,
    y = love.graphics.getHeight() / 2,
    radius = SHIP_SIZE,
    angle = VIEW_ANGLE,
    rotation = 0,
    thrusting = false,
    thrust = {
      x = 0,
      y = 0,
      speed = 0
    },
    draw = function (self)
      local opacity = 1
      love.graphics.setColor(1, 1, 1, opacity)

      love.graphics.polygon(
        "line",
        self.x + ((4/3) * self.radius) * math.cos(self.angle),
        self.y - ((4/3) * self.radius) * math.sin(self.angle),

        self.x - self.radius * (2/3 * math.cos(self.angle) + math.sin(self.angle)),
        self.y + self.radius * (2/3 * math.sin(self.angle) - math.cos(self.angle)),
        self.x - self.radius * (2/3 * math.cos(self.angle) - math.sin(self.angle)),
        self.y + self.radius * (2/3 * math.sin(self.angle) + math.cos(self.angle)) 
      )
    end
  }

end 

return Player
