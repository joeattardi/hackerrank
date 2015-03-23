main = ->
    n = parseInt input.readLine()
    for i in [0..(n-1)]
        line = input.readLine().split(' ')
        numStudents = parseInt line[0]
        minStudents = parseInt line[1]
        arrivalTimes = input.readLine().split(' ')

        onTimeStudents = []
        onTimeStudents.push time for time in arrivalTimes when parseInt(time) <= 0

        console.log if onTimeStudents.length >= minStudents then 'NO' else 'YES'        

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
        @inputLines.splice(0, 1)[0]

input = new InputReader()
input.readInput main




