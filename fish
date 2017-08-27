#set up
stage.set_background("underwater")
#poleone = codesters.Line(-34, 251, -34, 0, "black")
poleone = codesters.Line(130, 251, 130, 72, "black")
fish = codesters.Sprite("fish")
fish.go_to(-250, 72)
fish.set_size(1.5)
fish.speed(1)
    #fish.forward(375)


counter = 0
while counter < 3:

    digit1 = random.randint(1,10)
    digit2 = random.randint(1,10)
    question = str(digit1)+"+"+str(digit2) 
    correctAnswer = digit1 + digit2
    inputbox = codesters.Rectangle(-105, -188, 300, 50, "white")
    inputbox.set_opacity(0)
    userAnswer = int(inputbox.ask(question))
    if userAnswer == correctAnswer:
        counter += 1
        fish.forward(120)
    else:
        fish.say("BOO")
        fish.wait(2)
        fish.say("")
        