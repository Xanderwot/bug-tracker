module TtsHelper
	def id_helper(tt_id)
		tt_id = "#{tt_id}"
		length = tt_id.length
		zero_num = 8 - length
		"#{"0"*zero_num}#{tt_id}"
	end
end
