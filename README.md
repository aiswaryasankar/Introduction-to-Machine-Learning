# Introduction-to-Machine-Learning

<b>Week 2: Logistic Regression</b>

  Implemented logistic regression for the following scenarios:

    1. Linear decision boundary to predict a student's admission to a university based on performance on 2 tests
    2. Non-linear decision boundary for microchips based on 2 performance metrics

  For both problems, data was first visualized with scatter plots.  A sigmoid function and the logistic cost function 
  were implemented.  Cost function optimization is handled by the octave function "fminunc" to find the minimum of an 
  unconstrained function.  For the non-linear decision boundary the function "mapFeature.m" was written to create 28 
  polynomial features to fit the non-linear decision boundary.
  
<b>Week 3: Multi-class classification & Neural Networks</b>

  Used logistic regression and neural networks to classify hand-written digits
  
  Data used was 5000 images of 20x20 pixels. Wrote 10 separate one-vs-all classifiers.  Added regularization to all 
  terms.  Computed vector of all probabilities and chose the numeral with highest probability.  Achieved 94.9% 
  accuracy.  Used an already trained neural network to predict digit from the same dataset. Computed h(x(i)) for 
  each example i.  Performed this computation at each level of the neural network.
  
<b>Week 4: Neural Network Learning</b>
  
  Implemented forward propagation and backpropagation to learn the parameters of a neural network.
  The following is an outline of the backpropagation algorithm:
    <ol>
      <li>Randomly initialize weights</li>
      <li>For each training example</li>
        <ol>
          <li>Set features of input layer to the training example </li>
          <li>Feedforward: compute activations of each layer </li>
          <li>Compute error at output layer: actual - predicted </li>
          <li>Compute error for each hidden layer: weighted error from previous layer </li>
          <li>Compute derivative of accumulated error for all layers </li>
        </ol>
      <li>Run gradient checking function </li>
      <li>Add regularization to the derivative of accumulated error </li>
      <li>Use "fmincg" to learn parameters given derivative and cost function</li>
    </ol>
      
