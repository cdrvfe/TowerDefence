# encoding: utf-8
require "./ReadFileModule.rb"

class Wave
	attr_reader :isActive

	def initialize(filepath)
		@isActive = true
		@count = 0
		@nowTime = 0
		@enemyTime = [30,60,120,150,180]
		@enemyId = [1,1,1,1,1]

		createWaveFromFile(filepath)
	end

	def createWaveFromFile(filepath)
		filedata = ReadFileModule.read_text(filepath)
		@enemyTime.clear
		@enemyId.clear

		filedata.each do |line|
			waveData = ReadFileModule.csv2ints(line)
			@enemyId.push(waveData[0])
			@enemyTime.push(waveData[1])
		end
	end

	def update
		if(@isActive)
			@nowTime += 1
			if(@nowTime == @enemyTime[count])
				# オブジェクトプールに敵生成をなげる
				@count += 1
			end
			if(@enemyTime.length <= @count)
				@isActive = false
			end
		end
	end

	def draw(screen)
		# 何もしない
	end
end

=begin
Waveファイルの仕様:
	Waveごとにルートは変わらないのでもつ必要はない
	必要なのは時間と種類
	id,time
	id,time
	id,time
	...みたいな感じ
=end