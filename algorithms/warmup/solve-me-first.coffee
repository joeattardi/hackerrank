process.stdin.resume()
process.stdin.setEncoding 'ascii'

inputStdin = ''
inputStdinArray = []

process.stdin.on('data', (data) ->
    inputStdin += data
)

process.stdin.on('end', ->
    inputStdinArray = inputStdin.split '\n'
    main()
)

readLine = ->
    inputStdinArray.splice(0, 1)[0]

main = ->
    num1 = parseInt readLine()
    num2 = parseInt readLine()
    console.log(num1 + num2)
    