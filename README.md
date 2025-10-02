# Diabetic Retinopathy Image Classification (MATLAB)

This project implements a deep learning algorithm in MATLAB to classify diabetic retinopathy images using **transfer learning** on the InceptionV3 convolutional neural network (CNN).

## Overview

- Classified diabetic retinopathy images into 5 severity classes using the IDRiD dataset (516 images).  
- Retrained InceptionV3 multiple times, summing predicted probabilities across runs to produce final classifications.  
- Achieved over **90% accuracy** on the test set.  

## Project Files

- `main.m` – main MATLAB script for training and testing  
- `scripts/` – supporting MATLAB functions   
- `pdf/` – PDFs required to generate the report  
- `workspace/default_WS.mat` – saved workspace file for using precomputed results  
- `scripts/data/` – image dataset required for the CNN   

---

## How to Run

1. Open MATLAB.  
2. Navigate to the `src/` folder.  
3. Run the main script:  
   ```matlab
   main
   ```
4. When prompted, enter **Y** to retrain the CNNs or **N** to use saved results.

> **Note:** The **Deep Learning Toolbox Model for Inception-v3 Network** add-on must be installed if retraining the CNNs.

### Output

- If you choose **N**:  
  - `Final_Report.pdf` is generated in the `src/` folder    

- If you choose **Y**:  
  - `Final_Report.pdf` is generated in the `src/` folder  
  - `PredictionResults.xlsx` is generated in the `src/` folder

> Note: If **N** is selected, pages 4–7 of the PDF are formatted for easy review. If **Y** is selected, the same data is provided in `PredictionResults.xlsx` without additional formatting.

---

The final report generated from the saved results is also available on my [portfolio website](https://trevorzimmerman.github.io/university/diabetic-retinopathy).
