//map out the train lines and their respective stations
var trainLines = [
    //trainLines[0] Alamain
    (line0 = {
        lineName: "alamein",
        stations: ["Flinders Street", "Richmond", "East Richmond", "Burnley", "Hawthorn", "Glenferrie"]
    }),
    //trainLines[1] Sandringham
    (line1 = {
        lineName: "sandringham",
        stations: ["Southern Cross", "Richmond", "South Yarra", "Prahran", "Windsor"]
    }),
    //trainLines[2] Glen Waverley
    (line2 = {
        lineName: "glen waverley",
        stations:  ["Flagstaff", "Melbourne Central", "Parliament", "Richmond", "Kooyong", "Tooronga"]
    })
]   

var start = "";
var finish = "";
var directions = "";
var numStops1;
var directionsleg2 = "";
var numStops2;
var startTrainLine;
var startTrainLineName;
var finishTrainLine;
var finishTrainLineName;

start = prompt("Enter Origin Station Name");
// validation, if any train line index of "start" returns a negative number, prompt user again

for (var count = 0; count < trainLines.length; count++){
    if (trainLines[count].stations.indexOf(start) < 0){
        start = prompt("Enter a Valid Origin Station Name");
    }
}

finish = prompt("Enter Desitination Station Name");

for (var count = 0; count < trainLines.length; count++){
    if (trainLines[count].stations.indexOf(finish) < 0){
        finish = prompt("Enter a Valid Destination Station Name");
    }
}

//find out which train lines the starting station and the ending station are on - store in startTrainLine & finishTrainLine

for (var trainLinesIndex = 0; trainLinesIndex < trainLines.length; trainLinesIndex++){
    if (trainLines[trainLinesIndex].stations.indexOf(start) >= 0){
        startTrainLine = trainLines[trainLinesIndex];
        startTrainLineName = trainLines[trainLinesIndex].lineName;
    }
}
for (var trainLinesIndex = 0; trainLinesIndex < trainLines.length; trainLinesIndex++){
    if (trainLines[trainLinesIndex].stations.indexOf(finish) >= 0){
        finishTrainLine = trainLines[trainLinesIndex];
        finishTrainLineName = trainLines[trainLinesIndex].lineName;
    }
}

if (start === "Richmond"){
    startTrainLine = finishTrainLine;
    startTrainLineName = finishTrainLineName;
}

//first test to see if the start and finish train stations are the same
if (start === finish){
    console.log("You're already there");
}

else {
//run this if the stations are on the same train line
    if (startTrainLineName === finishTrainLineName){
        var howManyStations = startTrainLine.stations.indexOf(finish)-startTrainLine.stations.indexOf(start);
        var getDirectionsSingleLine = function (){
            if (howManyStations > 0){
                //do this while going foward
                for (var i = startTrainLine.stations.indexOf(start); i < startTrainLine.stations.indexOf(finish); i++) {
                    directions += ((startTrainLine.stations[i])+" ----> ")   
                }
            }
                //do this while going backwards
            else if (howManyStations < 0){
                for (var i = startTrainLine.stations.indexOf(start); i > startTrainLine.stations.indexOf(finish); i--) {
                    directions += ((startTrainLine.stations[i])+" ----> ");
                }
            }
            directions += (startTrainLine.stations[i]);
            numStops1 = Math.abs(howManyStations);
            return directions;
        };
        //output directions for when stations are on the same line
        console.log("origin: " + start)
        console.log("destination: " + finish)
        console.log(getDirectionsSingleLine());
        console.log(numStops1 + " stops");
    }
//run this if the stations are not on the same train line
    else {
        //first get directions from start to Richmond
        var howManyStations = startTrainLine.stations.indexOf("Richmond")-startTrainLine.stations.indexOf(start);
        var getDirectionsSingleLine = function (){
             if (howManyStations > 0){
                 //do this while going foward
                 for (var i = startTrainLine.stations.indexOf(start); i < startTrainLine.stations.indexOf("Richmond"); i++) {
                     directions += ((startTrainLine.stations[i])+" ----> ")   
                 }
             }
                 //do this while going backwards
             else if (howManyStations < 0){
                 for (var i = startTrainLine.stations.indexOf(start); i > startTrainLine.stations.indexOf("Richmond"); i--) {
                     directions += ((startTrainLine.stations[i])+" ----> ");
                 }
             }
             directions += (startTrainLine.stations[i]);
             numStops1 = Math.abs(howManyStations);
             return directions;

        };
        //output directions for when stations are on NOT the same line - first leg of journey
        console.log("origin: " + start)
        console.log("destination: " + finish)
        console.log(getDirectionsSingleLine());
        if (numStops1 === 1){
            console.log(numStops1 + " stop");
        }
        else {
            console.log(numStops1 + " stops");
        }
        console.log("transfer to the " + finishTrainLineName + " line");

        //then get directions from richmond to finish
        var howManyStations = finishTrainLine.stations.indexOf(finish)-finishTrainLine.stations.indexOf("Richmond");
        var getDirectionsLeg2 = function (){
             if (howManyStations > 0){
                 //do this while going foward
                 for (var i = finishTrainLine.stations.indexOf("Richmond"); i < finishTrainLine.stations.indexOf(finish); i++) {
                     directionsleg2 += ((finishTrainLine.stations[i])+" ----> ")   
                 }
             }
                 //do this while going backwards
             else if (howManyStations < 0){
                 for (var i = finishTrainLine.stations.indexOf("Richmond"); i > finishTrainLine.stations.indexOf(finish); i--) {
                     directionsleg2 += ((finishTrainLine.stations[i])+" ----> ");
                 }
             }
             directionsleg2 += (finishTrainLine.stations[i]);
             numStops2 = Math.abs(howManyStations);
             return directionsleg2;

        };
        //output directions for when stations are on NOT the same line - second leg of journey
        console.log(getDirectionsLeg2());
        if (numStops2 === 1){
            console.log(numStops2 + " stop");
        }
        else {
        console.log (numStops2 + " stops");
        };
    };
};

