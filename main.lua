local function sayHi(name)
  local name = name or "Nelson"

  print('Olá, ' .. name ..'!')
end

sayHi(string.lower("Henrique"))
