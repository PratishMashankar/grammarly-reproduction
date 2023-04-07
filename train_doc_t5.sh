#!/usr/bin/env bash

set -x

export TOKENIZERS_PARALLELISM=false

PYTHON=python3
git clone https://github.com/huggingface/transformers
cp run_summarization.py ./transformers/examples/pytorch/summarization/
TRAIN_SCRIPT=./transformers/examples/pytorch/summarization/run_summarization.py
TRAIN=/content/IteraTeR/human_doc_level/train.json
VALID=/content/IteraTeR/human_doc_level/dev.json
OUTPUT=t5_doc_model/
sha1sum ${TRAIN_SCRIPT}

${PYTHON} ${TRAIN_SCRIPT} \
  --model_name_or_path t5-large \
  --do_train \
  --do_eval \
  --train_file "${TRAIN}" \
  --validation_file "${VALID}" \
  --per_device_train_batch_size=4 \
  --per_device_eval_batch_size=4 \
  --num_train_epochs 5 \
  --gradient_accumulation_steps 4 \
  --evaluation_strategy "steps" \
  --eval_steps 200 \
  --save_steps 100 \
  --predict_with_generate \
  --logging_steps 50 \
  --output_dir "${OUTPUT}" \
  --overwrite_output_dir \
  --text_column before_sent_with_intent \
  --summary_column after_sent \
  --learning_rate 3e-5