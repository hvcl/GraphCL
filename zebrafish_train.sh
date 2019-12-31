cat zebrafish_train.sh
python main.py --env origin --gpu-id 4 5 6 7 --workers 8 --lbl-agents 0 --num-steps 6 --max-episode-length 6 --reward seg --model AttUNet --out-radius 8 32 --use-masks --size 144 144 --log-period 10 --features 8 16 32 64 128 --entropy-alpha 0.05 --downsample 4 --data zebrafish --in-radius 0.8 --log-period 10 --lr 1e-4 --fgbg-ratio 0.2 --st-fgbg-ratio 0.5 --mer_w 1.0 --spl_w 1.5 --save-period 50 --minsize 12