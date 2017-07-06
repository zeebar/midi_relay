
require 'unimidi'
require 'midilib'

module MidiRelay

  class Client

    include MidiRelay::Protocol


    def initialize( midi_source_name, server_host, server_port = DEFAULT_PORT )

      @outputs = UniMIDI::Output.all
      @outputs.each_with_index do |output, ox|
        log "output #{ox}: #{output.name}"
      end

    end


    def log( msg )
      puts "#{Time.now} #{msg}"
    end


  end

end

