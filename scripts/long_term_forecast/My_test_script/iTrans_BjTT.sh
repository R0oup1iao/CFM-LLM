export CUDA_VISIBLE_DEVICES="0, 1"

model_name=iTransformer
num_workers=10
enc_in=1063

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/BjTT/ \
  --data_path bjtt.csv \
  --model_id bjtt_96_5 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 5 \
  --e_layers 4 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in\
  --dec_in $enc_in\
  --c_out $enc_in\
  --des 'Exp' \
  --inverse \
  --d_model 512 \
  --d_ff 512 \
  --batch_size 16 \
  --learning_rate 0.001 \
  --num_workers $num_workers \
  --use_multi_gpu \
  --itr 1

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/BjTT/ \
  --data_path bjtt.csv \
  --model_id bjtt_96_10 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 10 \
  --e_layers 4 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in\
  --dec_in $enc_in\
  --c_out $enc_in\
  --des 'Exp' \
  --inverse \
  --d_model 512 \
  --d_ff 512 \
  --batch_size 16 \
  --learning_rate 0.001 \
  --num_workers $num_workers \
  --use_multi_gpu \
  --itr 1

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/BjTT/ \
  --data_path bjtt.csv \
  --model_id bjtt_96_15 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 15 \
  --e_layers 4 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in\
  --dec_in $enc_in\
  --c_out $enc_in\
  --des 'Exp' \
  --inverse \
  --d_model 512 \
  --d_ff 512 \
  --batch_size 16 \
  --learning_rate 0.001 \
  --num_workers $num_workers \
  --use_multi_gpu \
  --itr 1