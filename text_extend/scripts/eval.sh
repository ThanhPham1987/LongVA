for model in Qwen2-7B-Instruct-extend-step_1000
do
for num_distractor in 0 3 5
do
accelerate launch --num_processes 8 --config_file  accelerate_configs/deepspeed_inference.yaml  --main_process_port 6000 text_extend/eval_text_niah.py \
    --model text_extend/training_output/$model  \
    --max_context_length 512000 \
    --min_context_length 32000 \
    --context_interval   32000 \
    --depth_interval 0.1 \
    --num_samples 5 \
    --rnd_number_digits 7 \
    --haystack_dir text_extend/PaulGrahamEssays \
    --num_distractor $num_distractor
done
done






accelerate launch --num_processes 8 --config_file  accelerate_configs/deepspeed_inference.yaml  --main_process_port 6000 text_extend/eval_text_niah.py \
    --model vision_niah/model_weights/LLaVA-NeXT-Video-7B-32K  \
    --max_context_length 512000 \
    --min_context_length 32000 \
    --context_interval   32000 \
    --depth_interval 0.1 \
    --num_samples 2 \
    --rnd_number_digits 7 \
    --haystack_dir text_extend/PaulGrahamEssays \
    --num_distractor 0
