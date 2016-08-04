# Introduction-to-Machine-Learning

Week 2: Logistic Regression

  Implemented logistic regression for the following scenarios:

    1. Linear decision boundary to predict a student's admission to a university based on performance on 2 tests
    2. Non-linear decision boundary for microchips based on 2 performance metrics

  For both problems, data was first visualized with scatter plots.  A sigmoid function and the logistic cost function 
  were implemented.  Cost function optimization is handled by the octave function "fminunc" to find the minimum of an 
  unconstrained function.  For the non-linear decision boundary the function "mapFeature.m" was written to create 28 
  polynomial features to fit the non-linear decision boundary.
  
Week 3: Multi-class classification & Neural Networks

  Used logistic regression and neural networks to classify hand-written digits
  
  Data used was 5000 images of 20x20 pixels. Wrote 10 separate one-vs-all classifiers.  Added regularization to all 
  terms.  Computed vector of all probabilities and chose the numeral with highest probability.  Achieved 94.9% 
  accuracy.  Used an already trained neural network to predict digit from the same dataset. Computed h(x(i)) for 
  each example i.  Performed this computation at each level of the neural network.
