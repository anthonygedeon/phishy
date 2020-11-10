#!/usr/bin/node

"use strict";

const fs = require('fs');
const http = require('http');
const ngrok = require('ngrok');
const inquirer = require('inquirer');
const { exec } = require('child_process');

