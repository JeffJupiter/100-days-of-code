extends Node


#My intent is to use a signleton to store all the important bits of info such as:
# Players score and the Player Win fuctions
# Then I can reference the player win func and use that to determine what the win message
#should display  
# This singleton became available to all other scripts via the Autoload in project settings 
# A singlton acts as a hub to store information that can be accessed other scripts and areas
# of your code. 

#When I used the singleton it took me a while to find out I did not need to use onready 
# I did not need to use get_node 
# The singleton or global script is accessiable just by calliung out by name 
# I have decided to just go with a signal as the global kept coming up Nil 


# Stuck on process only taking one fuction / return value for 3 days!! Very annoying problem 
#Becuae I know its more simiple to solve than I think
# This far I have tried 
#creating a fuction that takes in both signals 
#creating a var that takes in both signals 
# Creating a global script / Singlton 
