

https://huggingface.co/autotrain
https://huggingface.co/mistralai/Mistral-7B-v0.1
https://huggingface.co/mistralai/Mistral-7B-Instruct-v0.1
https://huggingface.co/meta-llama/Llama-2-7b
https://huggingface.co/liuhaotian/llava-v1.5-13b
https://huggingface.co/ehartford/dolphin-2.1-mistral-7b
https://huggingface.co/openai/whisper-large-v2
https://huggingface.co/hotshotco/Hotshot-XL
https://huggingface.co/amazon/MistralLite
https://huggingface.co/lllyasviel/ControlNet-v1-1
https://huggingface.co/THUDM/chatglm2-6b
https://huggingface.co/THUDM/CogVLM
https://huggingface.co/bigscience/bloom
https://huggingface.co/gpt2
https://huggingface.co/WisdomShell/CodeShell-7B
https://huggingface.co/tiiuae/falcon-180B
https://huggingface.co/bigcode/starcoder
https://huggingface.co/kaist-ai/prometheus-13b-v1.0
https://huggingface.co/WizardLM/WizardCoder-Python-34B-V1.0
https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGML
https://huggingface.co/defog/sqlcoder2
https://huggingface.co/suno/bark
https://huggingface.co/impira/layoutlm-document-qa
https://huggingface.co/prajjwal1/bert-small


wget https://huggingface.co/kaist-ai/prometheus-13b-v1.0/resolve/main/pytorch_model-00006-of-00006.bin -o prometheus13b.bin
wget https://huggingface.co/WizardLM/WizardCoder-Python-34B-V1.0/resolve/main/pytorch_model-00007-of-00007.bin -o wizardcoder-python-34b.bin
wget https://huggingface.co/defog/sqlcoder2/resolve/main/pytorch_model-00001-of-00004.bin -o sqlcoder2.bin
wget https://huggingface.co/suno/bark/resolve/main/pytorch_model.bin -o bark-txt2audio.bin
wget https://huggingface.co/impira/layoutlm-document-qa/resolve/main/pytorch_model.bin -o layoutlm-document.bin
wget https://huggingface.co/prajjwal1/bert-small/resolve/main/pytorch_model.bin -o bert-small.bin



echo "https://huggingface.co/autotrain" | sed -e 's|^|wget |' -e 's|$|.bin|'
echo "https://huggingface.co/mistralai/Mistral-7B-v0.1" | sed -e 's|^|wget |' -e 's|$|.bin|'
echo "https://huggingface.co/mistralai/Mistral-7B-Instruct-v0.1" | sed -e 's|^|wget |' -e 's|$|.bin|'
echo "https://huggingface.co/meta-llama/Llama-2-7b" | sed -e 's|^|wget |' -e 's|$|.bin|'
echo "https://huggingface.co/liuhaotian/llava-v1.5-13b" | sed -e 's|^|wget |' -e 's|$|.bin|'
echo "https://huggingface.co/ehartford/dolphin-2.1-mistral-7b" | sed -e 's|^|wget |' -e 's|$|.bin|'
echo "https://huggingface.co/openai/whisper-large-v2" | sed -e 's|^|wget |' -e 's|$|.bin|'
echo "https://huggingface.co/hotshotco/Hotshot-XL" | sed -e 's|^|wget |' -e 's|$|.bin|'
echo "https://huggingface.co/amazon/MistralLite" | sed -e 's|^|wget |' -e 's|$|.bin|'
echo "https://huggingface.co/lllyasviel/ControlNet-v1-1" | sed -e 's|^|wget |' -e 's|$|.bin|'
echo "https://huggingface.co/THUDM/chatglm2-6b" | sed -e 's|^|wget |' -e 's|$|.bin|'
echo "https://huggingface.co/THUDM/CogVLM" | sed -e 's|^|wget |' -e 's|$|.bin|'
echo "https://huggingface.co/bigscience/bloom" | sed -e 's|^|wget |' -e 's|$|.bin|'
echo "https://huggingface.co/gpt2" | sed -e 's|^|wget |' -e 's|$|.bin|'
echo "https://huggingface.co/WisdomShell/CodeShell-7B" | sed -e 's|^|wget |' -e 's|$|.bin|'
echo "https://huggingface.co/tiiuae/falcon-180B" | sed -e 's|^|wget |' -e 's|$|.bin|'
echo "https://huggingface.co/bigcode/starcoder" | sed -e 's|^|wget |' -e 's|$|.bin|'
echo "https://huggingface.co/kaist-ai/prometheus-13b-v1.0" | sed -e 's|^|wget |' -e 's|$|.bin|'
echo "https://huggingface.co/WizardLM/WizardCoder-Python-34B-V1.0" | sed -e 's|^|wget |' -e 's|$|.bin|'
echo "https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGML" | sed -e 's|^|wget |' -e 's|$|.bin|'
echo "https://huggingface.co/defog/sqlcoder2" | sed -e 's|^|wget |' -e 's|$|.bin|'
echo "https://huggingface.co/suno/bark" | sed -e 's|^|wget |' -e 's|$|.bin|'
echo "https://huggingface.co/impira/layoutlm-document-qa" | sed -e 's|^|wget |' -e 's|$|.bin|'
echo "https://huggingface.co/prajjwal1/bert-small" | sed -e 's|^|wget |' -e 's|$|.bin|'




