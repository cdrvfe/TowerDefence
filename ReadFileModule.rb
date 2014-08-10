module ReadFileModule
	def read_text(file_name)
		lines = Array.new

		open(file_name) {|file|
			while line = file.gets
				lines.push(line)
			end
		}

		return lines
	end

	def csv2ints(textline, separator = ',')
		texts = textline.split(separator)

		ints = Array.new
		texts.each{|text|
			ints.push(text.to_i)
		}

		return ints
	end

	module_function :read_text
	module_function :csv2ints
end



=begin
test.txt:

0,0,0
1,1
2

output:

text:
0,0,0
1,1
2
csv:
000
11
2
=end

=begin
#テストコード
texts = ReadFileModule.read_text('test.txt')

puts 'text:'
texts.each{|line|
	puts line
}

puts "csv:"
texts.each{|line|
	ints = ReadFileModule.csv2ints(line)
	ints.each{|num|
		print num
	}
	puts
}
=end
