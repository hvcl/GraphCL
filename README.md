#Reinforced Coloring for End-to-End Instance Segmentation

##Installation
We tested our code with ```CUDA 10.0```, ```pytorch 1.1.0```, ```gym 0.14.0```
for more information about the dependencies, please view ```dependencies.txt```

##Data Preparation
We use tif image format for all datasets. Images are stored as volume file of size (#images x Height x Width x #Channels)
Training set path (path for validation set is similar) is settup as follows:
```
path_to_train_set/A/*.tif (for input images)
path_to_train_set/B/*.tif (for label images)
```
Testing data path is settup as:
```
path_to_test_set/A/*.tif
```
###Example with CVPPP
Setting up for CVPPP data set can be done as follows:

Download CVPPP data from <https://www.plant-phenotyping.org/CVPPP2017>
and extract the .h5 files to '''Data/CVPPP_Challenge/''' then run

```
mkdir -p Data/CVPPP_Challenge/train/A
mkdir -p Data/CVPPP_Challenge/train/B
mkdir -p Data/CVPPP_Challenge/valid/A
mkdir -p Data/CVPPP_Challenge/valid/B
mkdir -p Data/CVPPP_Challenge/test/B
cd Data/CVPPP_Challenge/
python ExtractData.py
```

##Training
For training with CVPPP (similarly with other data), run:
```
bash cvppp_train.sh
```

Tensorboard is used for data training logs, use:
```tensorboard --logdir=logs/``` 
checkpoints are saved at ```trained_models``` 

##Inference
For test set inference with CVPPP (similarly with other data), edit ```cvppp_deploy.sh```:
```--load```: load a check point (eg. ```trained_models/cvppp/cvppp/
```--deploy```: to run as an inference task
then runs:

```
bash cvppp_deploy.sh
```
Results are stored at ```deploy/```







