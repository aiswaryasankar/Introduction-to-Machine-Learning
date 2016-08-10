# Introduction-to-Machine-Learning

<b>Week 1: Linear Regression</b>
  
  Implemented univariate and multivariate linear regression for the following scenarios:
    1. Predict profits for food truck based on city population
    2. Predict housing price based on multiple factors
  
  First data was visualized using a scatter plot to check for a linear relationship.  Cost function was implemented as sum of residuals. Cost function was minimized using gradient descent algorithm with constant learning rate in direction of greatest cost function derivative.  Finally predicted profits with linear regression.  For the multivariate linear regression problem, features were first normalized by mean and standard deviation since magnitude of variables greatly differed (# bedrooms, # sq. ft). Selected the optimal learning rate for gradient descent and implemented a normal equation solution.

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
      
<b>Week 5: Regularized Linear Regression and Bias v.s. Variance</b>

  Goal of this week was to evaluate performance of linear and polynomial regression models.  First regularized linear regression was implemented to predict the amount of water flowing out of a dam using the change in water level. To measure goodness-of-fit, a learning curve was plotted.  This displayed the training and cross validation error for different sized training sets.  Since the learning curve showed high error for both the training and the cross validation set, high bias was determined.  Therefore more features were added to reduce bias through polynomial regression.  This led to overfitting as shown by a learning curve with low training error but high cross validation error.  Regularization was added to combat overfitting.  Finally, selected ideal lambda for regularization.  This was done by finding where the training and cross validation errors intersected for a wide range of lambda values.
  

<b>Week 6: Support Vector Machines</b>

  This week I used a SVM to build a spam classifier utilizing the SVM library from Octave. First, experimented with parameter C which controls penalty of misclassified examples, large C classifies all correctly.  Then, implemented a SVM with Gaussian kernel for non linear separation.  
  
    1. Determined best sigma (bandwidth parameter which determines how fast similarity metric decreases using cross validation set
    2. Spam preprocessing: http addresses, capitilization, word stemming, and non words removed
    3. Created vocab list of most frequently used words
    4. Mapped all words in email to voab list
    5. Extracted features from emails by creating vector {0,1} denoting presence of each word in voab list
    6. Trained SVM using 4000 features 
    
  A test accuracy of 98.5% was achieved for this data.
  
<b>Week 7: K-means Clustering and Principal Component Analysis</b>

  Worked to implement k-means for image compression - reducing the number of colors in an image.  This involved a two step process of finding the closest centroids and computing centroid mean after randomly initializing the first centroids.  The second part was to implement prinicipal component analysis.  First normazlized the data, computed the covariance matrix and took the singular value decomposition to find the eigenvectors.  Then projected the data onto the top eigenvectors to reconstruct the images with only the top components.
  
<b>Week 8: Anomaly Detection and Recommender Systems</b>
  
  Implemented anomaly detection to determine failing servers on a network based on throughput and latency of response of each server.  
  1. Used a Gaussian model to detect anomalies.  
  2. Estimated parameters sigma and mu for each variable.
  3. Selected threshold e to determine when a datapoint is an anomaly using F1 score on cv set
      F1 score is preferrable for highly skewed sample sets because it equally address precision and recall
