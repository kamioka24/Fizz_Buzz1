def to_hex(r, g, b)
	'#' + # 先頭に#をつける
	  r.to_s(16).rjust(2, '0') + # 整数値を16進数の文字列に変換して、2桁出力する
	  g.to_s(16).rjust(2, '0') +
	  b.to_s(16).rjust(2, '0')
end

# リファクタリング↓↓

# def to_hex(r, g, b)
# 	hex = '#'
#   [r, g, b].each do |n|
# 	  hex += n.to_s(16).rjust(2, '0')
#   end
#   hex
# end

def to_ints(hex)
	r = hex[1..2]
	g = hex[3..4]
	b = hex[5..6]
	ints = []
	[r, g, b].each do |s|
		ints << s.hex
	end
	ints
end

# リファクタリング↓↓

# def to_ints(hex)
# 	r = hex[1..2]
# 	g = hex[3..4]
# 	b = hex[5..6]
# 	[r, g, b].map do |s|
# 		s.hex
# 	end
# end

# もしくは↓↓

# def to_ints(hex)
# 	r, g, b = hex[1..2], hex[3..4], hex[5..6]
# 	[r, g, b].map do |s|
# 		s.hex
# 	end
# end