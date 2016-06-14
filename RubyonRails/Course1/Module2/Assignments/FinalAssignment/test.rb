#puts Dir.pwd
Dir.chdir 'C:\Users\Talet\Documents\SourceTree_Coursera\RubyonRails\Course1\Module2\Assignments\FinalAssignment'
puts Dir.pwd

class LineAnalyzer
	attr_reader :content, :line_number, :highest_wf_count, :highest_wf_words

	def initialize(content, line_number)
		@content = content
		@line_number = line_number
		calculate_word_frequency
	end

	def calculate_word_frequency
		result = Hash.new(0)
		words = @content.downcase.split
		words.each { |word| result[word] += 1 }
		@highest_wf_words = []
		result.each { |k, v| @highest_wf_words << k if v == result.values.max }
		@highest_wf_count = result.values.max
	end
end

class Solution
	attr_reader :analyzers, :highest_count_across_lines, :highest_count_words_across_lines

	def intialize(analyzers)
		@analyzers = analyzers
	end

	def analyze_file(file_name)
		@analyzers = []
		count = 1
		File.open(file_name).each do |line| 
			@analyzers << LineAnalyzer.new(line, count)
			count += 1
		end
	end

	def calculate_line_with_highest_frequency()
		count_across_lines = []
		@analyzers.each do |object|
			count_across_lines << object.highest_wf_count
		end
		@highest_count_across_lines = count_across_lines.max
	end

	def highest_count_words_across_lines()
		@highest_count_words_across_lines = []
		@analyzers.each do |object|
			if object.highest_wf_count == @highest_count_across_lines
				@highest_count_words_across_lines << object.highest_wf_words
			end
		end
	end

	def print_highest_word_frequency_across_lines()
		line_number = 1
		@analyzers.each do |object|
			if object.highest_wf_count == @highest_count_across_lines and object.highest_wf_words === @highest_count_words_across_lines
				puts "#{object.highest_wf_words} (appears in line #{line_number})"
			end
			line_number += 1
		end
	end
end

solution = Solution.new
solution.analyze_file('test.txt')
solution.calculate_line_with_highest_frequency
solution.print_highest_word_frequency_across_lines()

puts (2, 3, 4) == 2