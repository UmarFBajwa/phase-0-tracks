#Adding Method that takes an array and an item as parameters, and returns the array with an item added.
def method(a, b)
	a << b
end

#Adding Method that takes three items as parameters and returns an array of those items.
def method2(a, b, c)
	x = []
	x << a
	x << b
	x << c
end

eeyore = []
p eeyore

eeyore = ["dmitry", 42, true, "onesies", "ethereum"]
p eeyore

eeyore.delete_at(2)
p eeyore

eeyore.insert(2, true)
p eeyore

eeyore.delete("dmitry")
p eeyore

store = eeyore.include? "dmitry"
p "Does this array contain Dmitry? #{store}"

winnie = ["umar", 34, true, "hoodies", "world domination"]

tigger = eeyore + winnie
p tigger

p method(["Hi", "How", "You"], 2)
p method(["f", "y", "z"], "WTF")
p method2(1,2,3)