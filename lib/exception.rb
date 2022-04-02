puts 'Start'

begin
	1 + '10'
rescue StandardError
	puts '例外処理だが続行'
end

puts 'End'
