% Processing 1 - Introduction
% Alex McLean

# Processing

\includegraphics[width=0.1\textwidth]{../images/processing2-logo.jpg}

* Free/open source project
* Initiated by Casey Reas and Ben Fry in 2005
* For learning programming in visual context
* Based on Java, but simplified
* Sketchbook metaphor

# On-line documentation

\begin{center}
\includegraphics[width=0.5\textwidth]{../images/processingorg.png}

\url{https://processing.org/}
\end{center}

* Reference, Tutorials, Forum
* Off-line from UI:
    * Help -> reference
    * Right click on code -> find in reference

# Further reading

\includegraphics[width=0.5\textwidth]{../images/learningprocessing.jpg}

Video lectures:
<http://icm.shiffman.net/>

# Open processing

\begin{center}
\includegraphics[width=0.5\textwidth]{../images/processingorg.png}

\url{https://openprocessing.org/}
\end{center}

# Examples

File -> Examples

\begin{center}
\includegraphics[width=0.3\textwidth]{../images/examples.png}
\end{center}

# Lets get programming

* Draw a circle
* Play a sound

# Draw a circle

Use the `ellipse` function call

Reference: [Ellipse](http://processing.org/reference/ellipse_.html)

~~~~ {#mycode .java}
// x, y, width, height
ellipse(10,10,10,10);
~~~~

Understand:

* Cartesian coordinates and origins
* <http://processing.org/tutorials/drawing/>

# Make a sound

Add the minim library to your sketch.


# Draw ten circles

In different positions, using copy and paste

~~~~ {#mycode .java}
ellipse(10,10,10,10);
ellipse(20,20,10,10);
ellipse(30,30,10,10);
~~~~

and so on...

# Draw a hundred circles

Time to use variables and loops.

~~~~ {#mycode .java}
// Initialise variable, this will be our loop counter
int i = 0;

// repeat until test fails
while (i < 100) {
  ellipse(i*10, i*10, 10, 10);
  // increment
  i = i + 1;
}
~~~~

# Draw a hundred circles

Alternative loop form, with `for` you initialise, test and increment
in one line:

~~~~ {#mycode .java}
for (int i = 0; i < 100; i = i + 1) {
  line(i*10, i*10, 10, 10);
} 
~~~~

Shorthand for incrementing, this is the same as `i = i + 1`:

~~~~ {#mycode .java}
++i;
~~~~

# Draw infinite circles

Make the canvas a bit bigger in the setup phase

~~~~ {#mycode .java}
void setup() {
  size(400,400);
}
~~~~

Draw a circle in a
[random](http://processing.org/reference/random_.html) position in the
draw phase

~~~~ {#mycode .java}
void draw() {
  ellipse(random);
}
~~~~

* Randomise position
* Randomise colour
* Repeat (draw phase)
