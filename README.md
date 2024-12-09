# DS4002Project3

## Section 1: Software and platform section

This project was completed using Mac and Windows platforms. The coding language used was Python and the coding environments used were Google Colab and Gitpod. The Keras framwork was used, for which documentation can be accessed here: [https://pypi.org/project/face-recognition/](https://machinelearningmastery.com/how-to-perform-face-recognition-with-vggface2-convolutional-neural-network-in-keras)

In order to run the files, install the following packages / libraries:

pip install pandas

pip install pillow

pip install seaborn

pip install matplotlib

pip install numpy

pip install imutils

pip install opencv-python

pip install tensorflow

pip install scipy

pip install facenet-pytorch

pip install scikit-learn

## Section 2: Map of Documentation
### This repository is organized as follows:
1. DATA

    **FOLDER 1: "celebrity_images" contains the following:**

        -"celebrities" subfolder --> contains 25 subfolders, each dedicated to a unique celebrity. Each celeb subfolder contains 100 google images.

        -"celebrities_all" subfolder --> contains 25 subfolders, each dedicated to a unique celebrity. Each celeb subfolder contains the 100 original images for a unique celeb (sourced from the "celebrities" folder), as well as 300 augmented images for that celeb (sourced from the "celebrities_extra" folder).

        -"celebrities_extra" subfolder --> contains 25 subfolders, each dedicated to a unique celebrity. Each celeb subfolder contains 300 augmented images for that celebrity, as generated form the inital 100 photos.


    **FOLDER 2: "image_data" contains the following:**

        -"celeb_image_data" subfolder with the following files:

                -"all_celebs_image_data.csv" --> contains image data (brightness, celeb gender, etc.) for each of the 400 images in the complete "celebrities_all" folder (including augmented images). Each image is denoted with a filepath.

                -"celeb_image_data.csv" --> contains image data (brightness, celeb gender, etc.) for each of the 100 images in the "celebrities" folder (which does not include augmented images). Each image is denoted with a filepath.

        -"incorrect_guesses_data" subfolder with the following files:

                -"incorrect_guesses_data.csv" --> contains complete image data (brightness, celeb gender, etc.) for images which were incorrectly identified during the last testing epoch (epoch 100). Images are denoted with filepaths.

                -"incorrect_guesses_epoch_100.csv" --> contains a list of images which were incorrectly identified during the last tesing epoch (epoch 100). Created from incorrect_guesses.csv. This was later merged with "all_celebs_image_data.csv" to produce "incorrect_guesses_data.csv". 

                -"incorrect_guesses.csv" --> contains a full list of images which were misidentified in each epoch.

        -"testing_epoch_data" subfolder with the following files:

                -"epoch_results_v4.csv" --> a csv file containing the epoch number, the image filepath, the true class of the image, the predicted class of the image, and the confidence level of the guess
    
    
    **3. Data Appendix Project 3.pdf --> Data Appendix for all variables in the dataset used for project**

    **4. "haarcascade_frontalface_default.xml" --> contains documentation for Haar Cascade facial encodings. This is used for facial identification in the "STEP4-keras_recognition.ipynb" file**
      
2. SCRIPTS

    - STEP1-initial_EDA.ipynb --> A script which uses "celeb_image_data.csv" to produce the EDA graphs in "Initial Celeb Dataset EDA".

    - STEP2-data_appendix.ipynb --> A script used to generate the graphs in the data appendix.

    - STEP3-image_processing.ipynb --> A script used to process the 100 images for each celeb (as contained within the "celebrities" subfolderwithin "celebrity_images"), applying transformations to the images in order to create an addition 300 augmented images per celeb. The extra augmented images are saved to the "celebrities_extra" folder.

    - STEP4-keras_recognition.ipynb --> A script used to test if image augmentation was successful (i.e: by using tensorflow to see if the images in "celebrities_extra" contain faces, etc.)

    - STEP5-final_testing.ipynb --> A script which uses Keras to train a model to correctly identify celebrity faces. The base dataset used is "celebrities_all" from the "celebrity_images" folder. 100 testing epochs are used.

    - STEP6-epoch_analysis.ipynb --> A script which analyzes the model's facial identifiaction accuracy across epochs. 

    - STEP7-dataframe_creation_all_celebs.ipynb --> A script which generates a dataframe in which to store data for all of the images used in testing. This df is saved as "all_celebs_image_data.csv". Subsequently, this dataset is merged with "incorrect_guesses_epoch_100.csv" to produce "incorrect_guesses_data.csv", which is a dataset containing complete image data for every photo incorrectly identified in epoch 100.

    - STEP8-misidentifications_EDA.ipynb --> A script which performs EDA on "incorrect_guesses_data.csv" to describe the distribution of image characteristics for images misidentified in epoch 100. The output from the script is saved in "Misidentified Images EDA.pdf" in the output folder.

3. OUTPUT

    - Initial Celeb Dataset EDA.pdf --> contains graphs analyzing "celeb_image_data.csv". The initial 100 images are analyzed for each of the 25 celebs.

    - Misidentified Images EDA.pdf --> contains graphs analyzing "incorrect_guesses_data.csv". The graphs explore distributions in characteristics for images which were misidentified in the last epoch.

      
5. LICENSE
6. README.md
  
## Section 3: Instructions for reproducing results

### Please follow these steps in order to replicate this project's experimental design:

1. Download celebrity images on Google, separating them into folders by celebrity name, such as "Margot-Robbie" or "Will-Smith." Ensure that each folder contains 100 celebrity images, labelled 01-100. Alternatively, use the image folders pre-collected in the "celebrities" folder for ease of replication.

2. Navigate to the "STEP1-initial_EDA.ipynb" file in the scripts folder. Using the code, generate a dataframe to classify the celebrity images, in addition to producing the graphs for "Initial Celeb Dataset EDA.ipyb".

3. Create graphs for the data appendix using "STEP2-data_appendix.R" in the scripts folder. These graphs will also describe images in the "celebrities" folder.

4. Using the script "STEP3-image_processing.ipynb", generate 300 augmented images for each celebrity in the "celebrities" folder using image transformations. This will produce 400 images for each celebrity. The augmented folders will be saved into the "celebrities_extra" folder, whereas the entire set of photos will be saved to the "celebrities_all" folder. The latter folder will be the one used for Keras testing.

5. Using the "STEP4-keras_recognition.ipynb" file, testing out tensorflow by running some tests on the augmentated images. This will ensure that the images were properly modified.

6. Using the "STEP5-final_testing.ipynb" script, build a simple CNN model for use in testing. The script will utilize Keras, running 100 epochs to train the model to correctly identify celebrity images. Results will be saved to the "epoch_results.csv" file in the data folder.

7. Using the "STEP6-epoch_analysis.ipynb" script, generate the "incorrect_guesses_data.csv" and "incorrect_guesses_epoch_100.csv" files, which should be saved to the data folder. These data files contain data for images which were incorrectly identified by the model during tests. "incorrect_guesses_data.csv" will contain incorrect guesses for all epochs, whereas "incorrect_guess_epoch_100.csv" will contain data only for incorrct guesses in the final epoch.

8. Using the "STEP7-dataframe_creation_all_celebs.ipynb" script, generate a new dataframe which classifies image characteristics (i.e: brightness, celeb gender, etc.) for all images in the dataset using modified code from "STEP1-initial_EDA.ipynb". This dataframe will be saved to the "all_celebs_image_data.csv" file in the data folder. Then, this dataset will be merged with "incorrect_guesses_epoch_100.csv" to produce the dataset "incorrect_guesses_data.csv", which classifies all image attributes for photos which were incorrectly identified in the last testing epoch.

9. Using the "STEP8-misidentifications_EDA.ipynb" script, perform EDA on the "incorrect_guesses_data.csv" file in the data folder. This will allow for an analysis of characteristic trends amongst the images misidentified in the final testing round (epoch 100).

10. Finalize the data appendix using the "STEP9-data_appendix_part2.ipynb" script.


## References
[1] 	J. Brownlee, “How to Perform Face Recognition With VGGFace2 in Keras,” Machine Learning Mastery, https://machinelearningmastery.com/how-to-perform-face-recognition-with-vggface2-convolutional-neural-network-in-keras// (accessed Nov. 15, 2024). 

[2]	A. Najibi, “Racial Discrimination in Face Recognition Technology,” Science in the News, https://sitn.hms.harvard.edu/flash/2020/racial-discrimination-in-face-recognition-technology/ (accessed Nov. 9, 2024). 

[3]	A. Rosebrock, “Keras ImageDataGenerator and Data Augmentation,” Pyimagesearch, https://pyimagesearch.com/2019/07/08/keras-imagedatagenerator-and-data-augmentation/ (accessed Nov. 14, 2024). 

[4]	opencv, “Haarcascades,” Github, https://github.com/opencv/opencv/tree/master/data/haarcascades/ (accessed Nov. 14, 2024). 

[5]	A. Jawabreh, “Exploring the Most Advanced Deep Learning Algorithm For Facial Detection,” Medium, ​​https://medium.com/the-modern-scientist/multi-task-cascaded-convolutional-neural-network-mtcnn-a31d88f501c8/ (accessed Nov. 14, 2024). 

[6] 	“Convolutional Neural Network (CNN) in Machine Learning,” Geeks For Geeks, https://www.geeksforgeeks.org/convolutional-neural-network-cnn-in-machine-learning/ (accessed Nov. 15, 2024). 

[7] 	J. Brownlee, “Gentle Introduction to the Adam Optimization Algorithm for Deep Learning,” Machine Learning Mastery, https://machinelearningmastery.com/adam-optimization-algorithm-for-deep-learning/ (accessed Nov. 15, 2024).  

