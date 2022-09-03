#This code will only work on the Reeborg site as a lot of it is custom.
#Reeborg's world hurdle 4
#https://reeborg.ca/reeborg.html?lang=en&mode=python&menu=worlds%2Fmenus%2Freeborg_intro_en.json&name=Hurdle%204&url=worlds%2Ftutorial_en%2Fhurdle4.json

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
    
