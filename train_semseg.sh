LOG=psp_deepsup_step_42epoch_2gpus_device03.log
export export PYTHONPATH=/home/zhanwj/Desktop/pyTorch/anaconda3/envs/pytorch/bin:$PYTHONPATH
CUDA_VISIBLE_DEVICES=0,4 /home/zhanwj/Desktop/pyTorch/anaconda3/envs/pytorch/bin/python  -u tools/train_net.py --dataset cityscapes \
    --cfg configs/baselines/e2e_pspnet-101_2x.yaml \
    --bs 4 --nw 2  --device_ids 3 4 \
    --epochs 40 --ckpt_num_per_epoch 9 \
    --lr_decay_epochs 24 30 \
    --disp_interval 20  --use_tfboard