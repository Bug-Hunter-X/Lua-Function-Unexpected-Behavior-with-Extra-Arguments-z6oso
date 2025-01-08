local function foo(...)
  local x = select(1, ...)
  if x == nil then
    return nil
  else
    return x * 2
  end
end

print(foo(nil)) -- Output: nil
print(foo(10)) -- Output: 20
print(foo()) -- Output: nil
print(foo(10,20)) -- Output: 20
-- error handling example
local function foo_err_handling(...)
  local x = select(1, ...)
  if x == nil then
    error("Argument is nil")
  elseif select('#', ...) > 1 then
    error("Too many arguments")
  else
    return x * 2
  end
end

print(foo_err_handling(10)) -- Output: 20
--print(foo_err_handling(nil)) -- throws error
--print(foo_err_handling(10,20)) -- throws error