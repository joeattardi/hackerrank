// https://www.hackerrank.com/challenges/strange-code

process.stdin.resume();
process.stdin.setEncoding('ascii');

var input_stdin = "";
var input_stdin_array = "";
var input_currentline = 0;

process.stdin.on('data', function (data) {
    input_stdin += data;
});

process.stdin.on('end', function () {
    input_stdin_array = input_stdin.split("\n");
    main();    
});

function readLine() {
    return input_stdin_array[input_currentline++];
}

/////////////// ignore above this line ////////////////////

function main() {
  var t = parseInt(readLine());
  
  var total = 0;
  for (let i = 1; total < t; i++) {
    total += 3 * Math.pow(2, i - 1);
  }

  console.log(total - t + 1);

}

