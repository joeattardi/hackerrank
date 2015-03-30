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
    mapSize = parseInt input.readLine()
    map = []
    i = 0
    while i < mapSize
        map.push (parseInt n for n in input.readLine().split(''))
        i++

    y = 0
    while y < mapSize
        x = 0
        while x < mapSize
            if x > 0 and y > 0 and x < mapSize - 1 and y < mapSize - 1 and map[y][x] > map[y - 1][x] and map[y][x] > map[y + 1][x] and map[y][x] > map[y][x - 1] and map[y][x] > map[y][x + 1]
                process.stdout.write 'X'
            else                
                process.stdout.write map[y][x].toString()
            x++
        process.stdout.write '\n'
        y++

new InputReader().readInput main