# bash experiments/imagenet-r.sh
# experiment settings
GPUID='0'
REPEAT=1

# CODA-P
#
# prompt parameter args:
#    arg 1 = prompt component pool size
#    arg 2 = prompt length
#    arg 3 = ortho penalty loss weight - with updated code, now can be 0!
python -u run.py --config configs/imnet-r_prompt_super_long.yaml --gpus $GPUID --repeat $REPEAT \
    --learner_type prompt --learner_name CODAPrompt \
    --prompt_param 100 8 0.0
