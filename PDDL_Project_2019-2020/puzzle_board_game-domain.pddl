(define (domain puzzle_board_game)

    (:requirements
        :strips
    )
    
    (:types
        position
        tile
    )

    (:predicates
        (at ?tile ?pos) 
        (blank ?pos)
        (neighbor ?pos_1 ?pos_2)
    )

     (:action move_tile
        :parameters (?tile ?pos_from ?pos_to)
        :precondition (and
            (neighbor ?pos_from ?pos_to)
		    (blank ?pos_to)
		    (at ?tile ?pos_from)
		    )
        :effect (and 
            (at ?tile ?pos_to) (blank ?pos_from)
		    (not (at ?tile ?pos_from)) (not (blank ?pos_to))
        )
    )
)