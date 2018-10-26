# MscTransferedLearning

Currently Simulating the Kalman Filter using matlab

Observational Model (Folly & Quinn, Equation 3):

![observation model|f(x_{i}|z_{i}) = N(Hz_{i},\Sigma_{x})](https://latex.codecogs.com/gif.latex?f%28x_%7Bi%7D%7Cz_%7Bi%7D%29%20%3D%20N%28Hz_%7Bi%7D%2C%5CSigma_%7Bx%7D%29)

and

State Transition Model (Folly & Quinn, Equation 4):

![state transition model|f(z_{i+1}|z_{i}) = N(Az_{i},\Sigma_{z})](https://latex.codecogs.com/gif.latex?f%28z_%7Bi&plus;1%7D%7Cz_%7Bi%7D%29%20%3D%20N%28Az_%7Bi%7D%2C%5CSigma_%7Bz%7D%29)

to produce two graphs

one line plot represents the hidden state in a random walk

second line plot represents the observed/measured state with noise ontop of it

The next step is to apply the Kalman Filter to the mesaured line plot and observe if the line stays within the credible region

The Data step is given by

![Data Step|f(z_{i}|x_{i}) = N(\mu_{i},D_{i})](https://latex.codecogs.com/gif.latex?f%28z_%7Bi%7D%7Cx_%7Bi%7D%29%20%3D%20N%28%5Cmu_%7Bi%7D%2CD_%7Bi%7D%29)

The parameters are obtained using:

place here

The One Step ahead predictor is given by

![One Step Ahead|f(z_{i+1}|x_{i}) = N(m_{i+1},T_{i+1})](https://latex.codecogs.com/gif.latex?f%28z_%7Bi&plus;1%7D%7Cx_%7Bi%7D%29%20%3D%20N%28m_%7Bi&plus;1%7D%2CT_%7Bi&plus;1%7D%29)


The paramters are updated using:

place here
