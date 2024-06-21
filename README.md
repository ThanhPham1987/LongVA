# LongVA & V-NIAH
<p align="center">
    <img src="vision_niah/niah_output/LongVA-7B/heatmap.png" width="500">
</p>

<p align="center">
    🌐 <a href="XXX" target="_blank">Blog</a> | 📃 <a href="XXX" target="_blank">Paper</a> | 🤗 <a href="https://huggingface.co/collections/PY007/easycontext-660cef5a02b514836996b782" target="_blank">Hugging Face</a> | 🎥 <a href="XXX" target="_blank">Demo</a>
</p>
In summary:

Long context capability can zero-shot transfers from language to vision.

LongVA  can process up to 2000 frames or over 200K visual tokens. It achieves state-of-the-art performance on Video-MME among 7B models.


## Installation 
This codebase is tested on CUDA 11.8 and A100-SXM.
```
conda create -n longva python=3.10 -y && conda activate longva
cd longva && pip install .[train] && cd ..
pip install packaging &&  pip install ninja && pip install flash-attn --no-build-isolation --no-cache-dir
pip install -r requirements.txt
```


## Local Demo

## V-NIAH Evaluation
```bash
#download the model weights
huggingface-cli download LongVa/LongVA-7B --local-dir vision_niah/model_weights/LongVA-7B
sh vision_niah/eval.sh
```
Results will be saved to vision_niah/niah_output
## LMMs-Eval Evaluation
```

```

## Long Text Training

## Vision Text Alginment

## Citation

## Acknowledgement
```
LLaVA: the codebase we built upon. Thanks for their wonderful work.

```
