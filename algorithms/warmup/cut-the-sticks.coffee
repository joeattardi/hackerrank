class InputReader
    constructor: ->
        @inputBuffer = ''
        @inputLines = []

        process.stdin.resume()
        process.stdin.setEncoding 'ascii'

    readInput: (callback) ->
        process.stdin.on('data', (data) =>
            @inputBuffer += data
        )

        process.stdin.on('end', =>            
            @inputLines = @inputBuffer.split '\n'
            callback this
        )

    readLine: -> 
        @inputLines.shift()

cut = (sticks) ->
    shortestStick = Math.min.apply Math, sticks
    (s - shortestStick for s in sticks when s > shortestStick)    

main = (input) ->
    numSticks = parseInt input.readLine()
    sticks = (parseInt s for s in input.readLine().split ' ')
    while sticks.length
        console.log sticks.length
        sticks = cut sticks        

new InputReader().readInput(main)