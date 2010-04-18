Pivotter.controllers :projects do
	post '/:name/activities' do |name|
		@project = Project.first(:name => name)

		node = Nokogiri.parse(request.body.read)
		desc = node.css("activity > description").inner_text

		links = node.css("activity stories story").map {|s|
			url = "http://www.pivotaltracker.com/story/show/#{s.at('id').inner_text}"
			if @project.enabled_bitly
				bitly(url)
			else
				url
			end
		}

		ShoutBot.shout(@project.irc_channel) do |channel|
			channel.whisper "#{desc} - #{links.join(' ')}"
		end
	end
end
