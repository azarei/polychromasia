require 'color'

module Polychromasia
	class ColorPicker
		def random_colors_to_hex
			color_values = Hash.new
			color_inputs = ['red', 'green', 'blue']

			color_inputs.each do |i|
				v = rand(255)
				color_values[i.to_s] = v
			end

			@hex_color = ""
			color = color_values.values

			color.each do |component|
				hex = component.to_s(16)
				if component < 10
					@hex_color << "0#{hex}"
				else
					@hex_color << hex
				end
			end

			puts @hex_color
			return @hex_color
		end		
	end
end
