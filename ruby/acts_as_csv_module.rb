module ActsAsCsv

	def self.included(base)
		base.extend ClassMethods
	end

	module ClassMethods
		def acts_as_csv
			include InstanceMethods
		end
	end

	module InstanceMethods

		def read
			@csv_contents = []
			filename = self.class.to_s.downcase + '.txt'
			file = File.new(filename)
			@headers = file.gets.chomp.split(', ')
		
			file.each do |row|
				@csv_contents << CsvRow.new(headers,row.chomp.split(', '))
			end
		end

		attr_accessor :headers, :csv_contents

		def initialize
			read
		end

                def each (&block)
			@csv_contents.each &block
		end

	end
end

class CsvRow
	attr_accessor :headers, :row

	def initialize (headers = [], row = [])
		@headers = headers
		@row = row
	end

	def method_missing(name, *args)
		column = @headers.index(name.to_s)
		@row[column] if column
	end
end

class RubyCsv
	include ActsAsCsv
	acts_as_csv
end

m = RubyCsv.new
#puts m.headers.inspect
m.each {|v| puts v.one }
m.each {|v| puts v.two }
m.each {|v| puts v.three }

