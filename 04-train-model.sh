#!bin/bash

CUDA_VISIBLE_DEVICES=0

CLAM_BASELINE_DIR=$HOME/datasets/_start_here/CLAM-baseline
CLAM_REPO=$HOME/datasets/_start_here/CLAM-baseline/CLAM
CLAM_OUTPUT=$HOME/CLAM-output
$CLAM_BASELINE_DIR

#FEATURE_DIR=$CLAM_OUTPUT/slide-features
FEATURE_DIR=$HOME/datasets/brca-psj-path/contest-phase-2/clam-preprocessing-train/resnet50-features


python $CLAM_REPO/main.py \
    --data_root_dir  $FEATURE_DIR \
    --split_dir      $CLAM_OUTPUT/train-val-test-splits \
    --results_dir    $CLAM_OUTPUT/final-results \
    --csv_path       $CLAM_BASELINE_DIR/slide-labels.csv \
    --task           brca_cancer_stage \
    --exp_code       first_attempt \
    --model_type     clam_mb \
    --model_size     small \
    --early_stopping \
    --drop_out \
    --log_data  \
    --weighted_sample \
    --k              10
    # --k_start        0 \
    # --k_end          1
    
python $CLAM_BASELINE_DIR/finished.py