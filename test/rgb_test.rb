require 'minitest/autorun'
require './lib/rgb'

class RgbTest < Minitest::Test
	def test_to_hex
		assert_equal '#000000', to_hex(0, 0, 0) # 10進数を16進数に
		assert_equal '#ffffff', to_hex(255, 255, 255)
		assert_equal '#043c78', to_hex(4, 60, 120)
	end

	def test_to_ints
		assert_equal [0, 0, 0], to_ints('#000000') # 16進数を10進数に
		assert_equal [255, 255, 255], to_ints('#ffffff')
		assert_equal [4, 60, 120], to_ints('#043c78')
		# 期待する結果が配列の場合は''で囲まない
	end
end