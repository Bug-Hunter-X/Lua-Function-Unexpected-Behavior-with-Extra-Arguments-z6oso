local function foo(x)
  if x == nil then
    return nil
  else
    return x * 2
  end
end

print(foo(nil)) -- Output: nil
print(foo(10)) -- Output: 20
print(foo()) --Output: nil
print(foo(10,20)) -- Output: 20, unexpected behavior