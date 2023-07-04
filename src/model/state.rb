module Model                                    #Se especifican las clases basicas en el modulo
    module Direction
        UP = :up
        RIGHT = :right
        DOWN = :down
        LEFT = :left
    end

    class Coord < Struct.new(:row, :col)          #Coordenadas
    end

    class Food < Coord                          #Usamos herencia de coordenadas para no repetir codigo, comida
    end

    class Snake < Struct.new(:positions)         #Serpiente
    end

    class Grid < Struct.new(:row,:col)            #Grilla
    end

    class State < Struct.new(:snake, :food, :grid, :curr_direction, :game_finished) #Enbgloba la informacion en una clase, si se requiere mas se ira
    end

    def self.initial_state
        Model::State.new(
            Model::Snake.new([
                Model::Coord.new(1,1),
                Model::Coord.new(0,1)
            ]),
            Model::Food.new(4, 4),
            Model::Grid.new(8, 12),
            Direction::DOWN,
            false
        )
    end
end