# Multilingual Intent Text Classification and Text Revision Model

This repository has been created in contribution to the final project titled Reproducibility Study of “Understanding Iterative Revision from Human-Written Text”,  ACL Anthology  2022, for CS678 Advance Natural Language Processing under Professor Antonios Anastasopoulos and Professor Sina Ahmadi. 

## File Structure
- **Report.pdf:** Final documentation of the project
- **code/**
  - **reproduction.ipynb:** Notebook detailing the reproduction and experimentation of [Understanding Iterative Revision from Human-Written Text] (https://aclanthology.org/2022.acl-long.250/)
  - **robustness-multilinguality.ipynb:** Code to perform robustness and multilinguality tests on above
- **cp1files:** has all the files required for reproducing the paper  “Understanding Iterative Revision from Human-Written Text” by Wanyu D et al. with additional models for comparision
- **edit_generation:** has shell scripts and python files for performing robustness and multilingual tests on the Pegasus and mT5 models for edit generation module
- **intent_classification:** has shell scripts and python files for performing robustness and multilingual tests on the RoBERTa and XLM-RoBERTa models for intent classification module
- **multi_data:** multilingual datasets with English, Hindi, French, Tamil and Chinese to perfrom zero shot and fully supervised analysis generated using Google API
- **robust_data:** noisy test data generated using "Beyond Accuracy: Behavioral Testing of NLP Models with CheckList" (Ribeiro et al., ACL 2020)

## Team Members

- Pratish Mashankar G#: G01354094
- Sai Likhitha Allanki G#: G01336091
- William J David G#: G01129185
