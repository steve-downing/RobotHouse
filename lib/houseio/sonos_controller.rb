require 'sonos'

class SonosController
	def initialize
		@speakers_by_name = {}
		Sonos::System.new.speakers.each do |speaker|
			@speakers_by_name[speaker.name] = speaker
		end
	end

	def play_audio(speaker_name, audio_url)
		speaker = @speakers_by_name[speaker_name]
		return :device_unavailable if speaker.nil?

		speaker.play(audio_url)
		speaker.play
		return :success
	end
end
