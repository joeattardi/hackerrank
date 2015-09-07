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

main = (input) ->
    [freewayLength, testCases] = input.readLine().split(' ')
    widths = (parseInt(width) for width in input.readLine().split ' ')
    i = 0
    while i < testCases
        [enter, exit] = (parseInt segment for segment in input.readLine().split ' ')
        j = enter
        vehicle = widths[enter]
        while j <= exit
            vehicle = Math.min vehicle, widths[j]
            j++
        console.log vehicle
        i++


input = new InputReader()
input.readInput(main)