class SightingSerializer

    def initialize(sighting_objet)
        @sighting = sighting_objet
    end

    def to_serialized_json
        @sighting.to_json(:include => {
          :bird => {:only => [:name, :species]},
          :location => {:only => [:latitude, :longitude]}
        }, :except => [:updated_at])
      end
      
end