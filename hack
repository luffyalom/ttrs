// ==UserScript==
// @name         Times Tables Rock Stars Practice Script
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  A script to generate random times tables questions for practice
// @author       Lambert
// @match        https://www.ttrockstars.com/*
// @grant        none
// ==/UserScript==
(function() {
    'use strict';
// Set the maximum number for the times tables
const maxNumber = 12;

// Generate and print a random times tables question
function generateQuestion() {
    const num1 = Math.floor(Math.random() * maxNumber) + 1;
    const num2 = Math.floor(Math.random() * maxNumber) + 1;
    const question = `What is ${num1} x ${num2}?`;
    console.log(question);
}

// Get the player's answer
function getAnswer() {
    const answer = prompt(question);
    return answer;
}

// Check if the answer is correct
function checkAnswer(answer) {
    if (answer == num1 * num2) {
        console.log("Correct!");
    } else {
        console.log(`Incorrect. The correct answer is ${num1} x ${num2} = ${num1 * num2}`);
    }
}

// Generate a random times tables question and check the player's answer
function practiceTimesTables() {
    generateQuestion();
    const answer = getAnswer();
    checkAnswer(answer);
}

// Practice times tables 300 times
for (let i = 0; i < 300; i++) {
    practiceTimesTables();
}
})();
