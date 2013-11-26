% Music Technology
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

* Draw some shapes
* Play a sound

# Draw a circle

Use the [ellipse](http://processing.org/reference/ellipse_.html) function call

~~~~ {#mycode .java}
// x, y, width, height
ellipse(10,10,10,10);
~~~~

# Draw a square

Use the [rect](http://processing.org/reference/rect_.html) function call

~~~~ {#mycode .java}
// x, y, width, height
rect(30,30,10,10);
~~~~

# Change the brush colour

~~~~ {#mycode .java}
fill(255,0,0);
ellipse(10,10,10,10);

fill(0,255,0);
rect(30,30,10,10);

fill(0,0,255);
// x1, y1, x2, y2, x3, y3
triangle(40,40,50,40,55,45);
~~~~

# Exercise 1

Draw a face (or something) using fill, stroke, ellipse, rect and line.

Reminder:

~~~~ {#mycode .java}
// red, green, blue component from 0 to 255
fill(255, 255, 255);
// Same, but for line colour (e.g. around a shape)
stroke(255, 255, 255);

// x, y, width, height in pixels
ellipse(10, 10, 10, 10);

// same as ellipse
rect(20, 20, 10, 10);

// fromX, fromY, toX, toY
line(40, 40, 50, 50);
~~~~

# Loops - Draw ten squares

~~~~ {#mycode .java}
int count = 0;
while (count < 10) {
  fill((255/10) * count, 255, 0);
  rect(count * 10, 10, 10, 10);
  // add 1 to count
  count++;
} 
~~~~

or

~~~~ {#mycode .java}
for (int count = 0; count < 10; count++) {
  fill((255/10) * count, 255, 0);
  rect(count * 10, 10, 10, 10);
} 
~~~~

# Exercise 2: Make a sound

Add the minim library to your sketch:
  (Sketch -> Import library -> minim)

Download sound from <http://yaxu.org/tmp/kick.wav>

Add the sound to your sketch with Sketch -> Add file

~~~~ {#mycode .java}
// Initialise audio
Minim minim = new Minim(this);

// Prepare a sound
AudioSample kick = minim.loadSample("kick.wav");

// Trigger the sound
kick.trigger();
~~~~

# Animation the Processing way

Does things in `setup()` once, and then in `draw()` every frame

~~~~ {#mycode .java}
Minim minim;
AudioSample kick;

void setup() {
  // make the canvas a bit bigger
  setup(300,300);
  minim = new Minim(this);
  kick = minim.loadSample("kick.wav");
  frameRate(2);
}

void draw() {
  ellipse(random(width),random(height),10,10);
  kick.trigger();
}
~~~~

# Exercise 3

1. Make a shape move
    * Add a global `float` variable called `bally` that stores the y position of the shape
    * Add another global `float` variable that stores the speed of the shape
    * Add `speed` to `bally` every frame (i.e. within `draw()`)
2. Make the shape bounce off the edges of the sketch and make a sound
    * have an `if` statement that tests whether `bally > height`
    * when that is true, play a sound and invert `speed`, (i.e. set `speed = 0 - speed`)
    * do something similar for the top of the sketch (i.e. when `bally` < 0)
3. Challenges: have multiple shapes, or add gravity effect.
4. Challenge question: Could we replace the `float` variables with `int` variables? What is the advantage of either?