**Name: Andre Amorim | PI: A5624864 | TM470 | TMA03**  
**Project: nix₿ – A Didactic Laboratory for Software Reproducibility**   
 

## Contents Page

1. **Introduction and Abstract** (Explaining the Deliverable)  
2. **LO1: Exploring the Problem and Identifying Requirements** (Why Software Breaks)  
3. **LO2: Independent Learning and Technical Research** (Learning to fix the problem)  
4. **LO3: Planning, Resource Management, and Risk** (Managing the Project)  
5. **LO4: Professional and Ethical Practice** (Keeping Data Safe and Accessible)  
6. **LO5: Practical Skills and Implementation** (Building the Educational App)  
7. **LO6: Testing and Evaluation** (Proving the App Works)  
8. **LO7: Reviewing the Project** (Agile Sprints and Adaptations)  
9. **LO8: Communication and Presentation** (Making the Course Easy to Read)  
10. **LO9: Reflection and Professional Development** (What I Learned)  
11. **Appendices**

---

## 1\. Introduction and Abstract

### The Problem: Why Software Reproducibility Matters

Imagine giving a 10-year-old a recipe to bake a cake. If the recipe just says "add flour and bake," the cake might come out completely different depending on the kitchen they use. However, if the recipe says "add exactly 200 grams of King Arthur all-purpose flour, use a glass bowl, and bake at exactly 180 degrees Celsius for 25 minutes," the cake will come out perfect every single time, no matter who bakes it or where.

In software engineering, this is called **Software Reproducibility**. Often, developers write code that works perfectly on their own computer, but when they share it with a friend or a teacher, it crashes because their computer has a slightly different "kitchen" (different operating systems, missing files, or wrong software versions). This project solves that problem.

### The Deliverable: The nixB Educational Web App

To teach people how to fix this, I am developing a **web-based educational application** (an Open Educational Resource, or OER) hosted at `oer.nixb.org`.

This app is an interactive, step-by-step course that anyone—including examiners—can access. It teaches students how to use a tool called **Nix** to write "perfect recipes" for their software, ensuring their code runs exactly the same way on any computer in the world.

---

## 2\. LO1: Exploring the Problem and Identifying Requirements

* Defining the "It works on my machine" problem in simple terms.  
* Outlining the requirements for the OER web app (needs to be accessible, easy to read, and interactive).  
* Defining the target audience (students and beginner developers).

## 3\. LO2: Independent Learning and Technical Research

* How I researched Nix to understand how it builds perfect software environments.  
* How I researched Google's Open Knowledge Format (OKF) to turn complex PDF textbooks into interactive web lessons.  
* Building the `pdf2okf` tool to extract information from Open University learning materials.

## 4\. LO3: Planning, Resource Management, and Risk

* Using Agile Scrum (via `scrummd`) to manage my time and tasks.  
* Visualizing the project schedule (Sprints 1 to 3).  
* Identifying risks (like getting stuck on complex code) and how I pivoted to simpler "Codelab" formats to keep the project on track.

## 5\. LO4: Professional and Ethical Practice

* **Privacy and Security:** Implementing the "Three-Tier Privacy Strategy" to ensure my personal data is separated from the public academic repository.  
* **Accessibility:** Ensuring the OER web app is readable, uses clear fonts, and follows educational guidelines so anyone can learn from it.

## 6\. LO5: Practical Skills and Implementation (The Artefact)

* **Building the App:** Writing the Go web server that hosts the course.  
* **Creating the Content:** Using the `pdf2okf` tool to convert OpenLearn PDFs into interactive Codelab tutorials.  
* **Deploying:** Making the website live so users can interact with the software reproducibility lessons.

## 7\. LO6: Testing and Evaluation

* **Testing the Content:** Checking if the `pdf2okf` tool correctly extracts text from the PDFs without errors.  
* **Testing the App:** Making sure the web server doesn't crash and the web pages load quickly.  
* **Evaluating Success:** Proving that a user following the course can successfully build a reproducible environment.

## 8\. LO7: Reviewing the Project

* Reviewing my Agile Sprints: What went well and what went wrong.  
* How the feedback from TMA01 and TMA02 changed the direction of my project (e.g., simplifying the language and adding a Contents page).

## 9\. LO8: Communication and Presentation

* Writing the report and the course content in plain, accessible English (avoiding confusing jargon).  
* Organizing the report exactly according to the Learning Outcomes (LO1-LO9) to make it easy for examiners to review.

## 10\. LO9: Reflection and Professional Development

* Reflecting on the challenge of taking on a "Project Manager" role instead of just being a programmer.  
* Learning how to accept critical feedback and adapt my communication style to fit my audience.

---

## 11\. Appendices

* Appendix 1: Project Log Extracts  
* Appendix 2: Evidence of the OER Web App (Screenshots and Links)  
* Appendix 3: The `pdf2okf` Tool Source Code

