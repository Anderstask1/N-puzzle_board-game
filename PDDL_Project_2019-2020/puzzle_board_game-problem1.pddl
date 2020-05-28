(define (problem puzzle_board_game-problem1)
    (:domain puzzle_board_game)
    (:objects
        pos_11 pos_12 pos_13
        pos_21 pos_22 pos_23 
        pos_31 pos_32 pos_33
        tile_1 tile_2 tile_3 tile_4 tile_5 tile_6 tile_7 tile_8
    )
    (:init 
        (at tile_1 pos_13)
        (at tile_2 pos_11)
        (at tile_3 pos_31)
        (at tile_4 pos_33)
        (at tile_5 pos_32)
        (at tile_6 pos_12)
        (at tile_7 pos_22)
        (at tile_8 pos_23)
        
        (blank pos_21)
        
        (neighbor pos_11 pos_12) (neighbor pos_12 pos_11)
        (neighbor pos_12 pos_13) (neighbor pos_13 pos_12)
        (neighbor pos_21 pos_22) (neighbor pos_22 pos_21)
        (neighbor pos_22 pos_23) (neighbor pos_23 pos_22)
        (neighbor pos_31 pos_32) (neighbor pos_32 pos_31)
        (neighbor pos_32 pos_33) (neighbor pos_33 pos_32)
        (neighbor pos_11 pos_21) (neighbor pos_21 pos_11)
        (neighbor pos_12 pos_22) (neighbor pos_22 pos_12)
        (neighbor pos_13 pos_23) (neighbor pos_23 pos_13)
        (neighbor pos_21 pos_31) (neighbor pos_31 pos_21)
        (neighbor pos_22 pos_32) (neighbor pos_32 pos_22)
        (neighbor pos_23 pos_33) (neighbor pos_33 pos_23)
        
    )
    (:goal 
        (and
            (at tile_1 pos_11)
            (at tile_2 pos_12)
            (at tile_3 pos_13)
            (at tile_4 pos_21)
            (at tile_5 pos_22)
            (at tile_6 pos_23)
            (at tile_7 pos_31)
            (at tile_8 pos_32)
        )
    )
)