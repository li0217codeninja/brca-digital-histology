#!bin/bash

CUDA_VISIBLE_DEVICES=0

CLAM_BASELINE_DIR=$HOME/datasets/_start_here/CLAM-baseline
CLAM_REPO=$CLAM_BASELINE_DIR/CLAM
CLAM_OUTPUT=$HOME/CLAM-output

# FEATURE_DIR=$CLAM_OUTPUT/slide-features
FEATURE_DIR=$HOME/datasets/brca-psj-path/contest-phase-2/clam-preprocessing-train/resnet50-features

python $CLAM_REPO/eval.py \
    --data_root_dir    $FEATURE_DIR \
    --splits_dir       $CLAM_OUTPUT/final-results/first_attempt_s1  \
    --results_dir      $CLAM_OUTPUT/final-results \
    --eval_results_dir $CLAM_OUTPUT/eval-results \
    --csv_path         $CLAM_BASELINE_DIR/slide-labels.csv \
    --task             brca_cancer_stage \
    --models_exp_code  first_attempt_s1 \
    --save_exp_code    first_attempt \
    --model_type       clam_mb \
    --model_size       small \
    --drop_out \
    --fold             0 \
    # --k                10 \
    # --k_start          0 \
    # --k_end            10 \


python finished.py