
About = {
  age = function (y)
    return 2022 - y
  end
}

function About.say(name)
  local name = name or "Nelson"
  print("Olá,  " .. name ..'!')
end

return About