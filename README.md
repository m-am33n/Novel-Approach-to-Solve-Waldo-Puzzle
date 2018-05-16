# Novel-Approach-to-Solve-Waldo-Puzzle

Computer Graphics Project to find the position of Waldo in an image


### 1. Dataset Creation( dataset creation)

Purpose :  To prepare dataset for training

Files :
Images are stores in "dataset creation/datasets/test_images" and "dataset creation/datasets/train_images"
Corresponding CSV file is stored in "dataset creation/waldo_position_test.csv"  and "dataset creation/waldo_position_train.csv"
Python script to generate TFRecords "dataset creation/toTfRecord.py"  

Steps to Reproduce test.tfrecords and train.tfrecords

Execute the python script by specifying image and csv file location this will generate tfrecords in "dataset creation/TFRecord/" directory 
copy those file to main directory


### 2. Retraing the model

Purpose :  Retrain the RCNN inception v2 model to detect Waldo

Execute the train.py in tensorflow object detection directory ( "tensorflow models/research/object detection/" ) command to execute the train.py is 
specified in "runTrain.sh" file in main directory 

On execution this will generate our model in newmodel directory  


### 3. Execution of trained model

Execute the detectWaldo.py by specifying the input image path  this will reproduce the waldo detected or not


### 4. Report directory contains 

The research paper along with presentation and intermediate progress reports

### 5. template matching 
This direcotry contains the method to detect Waldo by using openCv method

## Team 
Aswanth P P <br>
Joe Antony <br>
Mohammed Ameen <br>
