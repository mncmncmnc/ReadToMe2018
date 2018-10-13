
'use strict';

var http = require("http");

const OUT_OF_RANGE_ERROR_CODE = 11;

class Server
{


	constructor() {
		this.port = 3000;
		this.ip = "localhost";
	
		this.data = "";
		this.record = require('node-record-lpcm16');

		this.speech = require('@google-cloud/speech');

		this.client
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
	}

	listen() {
		this.server.listen(this.port, this.ip);
		console.log("Server listening for connections");
	}

	microphoneStream(encoding, sampleRateHertz, languageCode) {
	  // [START micStreamRecognize]

	  // Node-Record-lpcm16
	  const record = require('node-record-lpcm16');

	  // Imports the Google Cloud client library
	  const speech = require('@google-cloud/speech');

	  const config = {
		encoding: 'LINEAR16',
		sampleRateHertz: 16000,
		languageCode: 'en-US',
	  };

	  const request = {
		config,
		interimResults: false, //Get interim results from stream
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
		this.data = `${data.results[0].alternatives[0].transcript}`;	 }
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

	handleReconnectError(error) {
		if(error.code === OUT_OF_RANGE_ERROR_CODE) {
			httpServer.microphoneStream('LINEAR16', 16000, 'en-US');
		//	this.initializeStream();
		}
		else console.error
	}

	processRequest(req, res) {
		if(req.method === "POST") {
			var body = ""
			req.on("data", (data) => {
				body += data;
			});
			req.on("end", () => {
				console.log("received data: " + body);
				var vars = body.split("&");
				for (var t = 0; t < vars.length; t++)
                {
                    var pair = vars[t].split("=");
                    var key = decodeURIComponent(pair[0]);
                    var val = decodeURIComponent(pair[1]);
                    console.log(key + ":" + val);
                }
                // Tell Unity that we received the data OK
                res.writeHead(200, {"Content-Type": "text/plain"});
                res.end("OK");
            });
		}
		else if(req.method === "GET") {
			if(this.data == "") {
				res.writeHead(204, {"Content-Type": "text/plain"});
				res.end("");
			}
			else {
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

httpServer.microphoneStream('LINEAR16', 16000, 'en-US');
httpServer.listen();
