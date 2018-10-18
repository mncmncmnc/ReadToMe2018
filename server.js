
'use strict';

var http = require("http");

const OUT_OF_RANGE_ERROR_CODE = 11;

class Server
{
	constructor() {
		if(process.argv[2]) {
			this.port = process.argv[2];
		}
		else {
			this.port = 3000;
		}
		console.log("Hosting server on port " + this.port + " (Pass a different argument to change port)");

		this.ip = "localhost";
	
		this.data = "";
		this.guess = "";
		this.record = require('node-record-lpcm16');

		this.speech = require('@google-cloud/speech');

		this.start();
	}

	start() {
		this.server = http.createServer((req, res) => {
			this.processRequest(req, res);
		});
		
		this.server.on("clientError", (err, socket) => {
			socket.end("HTTP/1.1 400 Bad Request\r\n\r\n");
		});
		console.log("Server created");

		this.startMicrophoneStream('LINEAR16', 16000, 'en-US');
		this.listenForConnections();
	}

	listenForConnections() {
		this.server.listen(this.port, this.ip);
		console.log("Server listening for connections");
	}

	startMicrophoneStream(encoding, sampleRateHertz, languageCode) {
	  // [START micStreamRecognize]

	  // Node-Record-lpcm16
	  const record = require('node-record-lpcm16');

	  // Imports the Google Cloud client library
	  const speech = require('@google-cloud/speech');

	  const config = {
		encoding: encoding,
		sampleRateHertz: sampleRateHertz,
		languageCode: languageCode,
	  };

	  const request = {
		config,
		interimResults: true, //Get interim results from stream
	  };

	  // Creates a client
	  const client = new speech.SpeechClient();

	  // Create a recognize stream
	  const recognizeStream = client
		.streamingRecognize(request)
		.on('error', (error) => this.handleReconnectError(error))
		.on('data', data => {
		  process.stdout.write(
			data.results[0] && data.results[0].alternatives[0]
			  ? `Transcription: ${data.results[0].alternatives[0].transcript}\n`
			  : `\n\nReached transcription time limit, press Ctrl+C\n`
		  );
		this.recordData(data);
		/*this.data = `${data.results[0].alternatives[0].transcript}`;*/	 }
		);

	  // Start recording and send the microphone input to the Speech API
	  record
		.start({
		  sampleRateHertz: 16000,
		  threshold: 0, //silence threshold
		  recordProgram: 'rec', // Try also "arecord" or "sox"
		  silence: '5.0', //seconds of silence before ending
		})
		.on('error', console.error)
		.pipe(recognizeStream);

	  console.log('Listening, press Ctrl+C to stop.');
	  // [END micStreamRecognize]
	}

	recordData(data) {
		if(data.results[0].isFinal) {
			this.data = `${data.results[0].alternatives[0].transcript}`;
		}
		else {
			this.guess = `${data.results[0].alternatives[0].transcript}`;
		}
	}

	handleReconnectError(error) {
		if(error.code === OUT_OF_RANGE_ERROR_CODE) {
			httpServer.startMicrophoneStream('LINEAR16', 16000, 'en-US');
		//	this.initializeStream();
		}
		else console.error
	}

	processRequest(req, res) {
		if(req.method === "GET") {
			if(this.data == "") {
				if(this.guess != "") {
					// Send Partial code for interim data
					res.writeHead(206, {"Content-Type" : "text/plain"});
					res.end(this.guess);
					this.guess = "";
				}
				else {
					// Send No Content code for no data
					res.writeHead(204, {"Content-Type": "text/plain"});
					res.end("");
				}
			}
			else {
				// Send data for final guess
				res.writeHead(200, {"Content-Type": "text/plain"});
				res.end(this.data);
				this.data = "";
			}
		}
		else {
			res.writeHead(405, "Method Not Allowed", {"Content-Type": "text/html"});
			res.end("Error");
		}
	}
}

var httpServer = new Server();

