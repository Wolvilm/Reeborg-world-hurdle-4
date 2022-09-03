
def turn_right():
    turn_left()
    turn_left()
    turn_left()


def jump():
    turn_left()
    move()
    turn_right()
    
    while wall_in_front():
        if front_is_clear():
                move()
        else:
            turn_left()
            move()
            turn_right()
            
   
    move()
    turn_right()
    
    while not wall_in_front():
        move()
        if wall_in_front():
            turn_left()
            break



while not at_goal():
    
    if wall_in_front():
        jump()
    elif front_is_clear():
        move()
    

 
