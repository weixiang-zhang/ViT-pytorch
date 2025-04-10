# CUDA_VISIBLE_DEVICES=3 python train.py --name feat_16_cifar10-100_500_ \
#                --dataset cifar10 \
#                --model_type ViT-B_16 \
#                --pretrained_dir /home/wxzhang/projects/featuring-inr/ckpt/ViT-B_16.npz \
#                --num_steps 500 \
#                --warmup_steps 100 \
#                --gradient_accumulation_steps 4 \
#                --inr_feature 16

### test
CUDA_VISIBLE_DEVICES=0 python train.py --name eval_cifar10-100_500 \
               --dataset cifar10 \
               --model_type ViT-B_16 \
               --ckpt /home/wxzhang/projects/featuring-inr/shared/ViT-pytorch/output/feat_32_cifar10-100_500__checkpoint.bin \
               --inr_feature 32 \
               --test
