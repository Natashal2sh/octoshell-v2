module Mystatistics
  class Task < ActiveRecord::Base
  require 'csv'

	def self.import(file)
  Task.delete_all

	file.each_line do |csv_data|
	CSV.parse(csv_data, headers: false) do |row|
  		hash = {
    		claster: row[0],
    		ntask: row[1],
    		login: row[2],
   	 		tbegin: row[3],
    		tend: row[4],
    		nodes: row[5],
   	 		cores: row[6],
    		status: row[7]
  		}
  		Task.create!(hash)
		end
	end
end
  end
end
