⚡ Z-Image Turbo
简易文本转图像工作流程 + 图像放大器和 Lora 加载器
Z-Image Turbo 是一款快速、精简、强大且高效的图像生成模型，拥有60 亿个参数。该模型的优势在于能够生成逼真的图像。但即便模型能够很好地遵循指令，其输出图像的质量仍然达不到顶级水平。我们仍然需要进行图像放大处理，才能使图像达到可接受的水平。这就是本工作流程的用武之地，其中包含了广为人知的 Ultimate SD Upscaler。

🚀你需要哪些东西才能立即开始？
这个工作流程——只需下载并加载到 ComfyUI 中即可。
Z-Image 模型：z_image_turbo_bf16.safetensors（放置在 \models\diffusion_models\ 目录下）
文本编码器文件：qwen_3_4b.safetensors（放置在 \models\text_encoders\ 目录下）
VAE 文件：ae.safetensors（位于 \models\vae\ 目录下）
您可以选择各种高档型号（放置在 \models\upscale_models\ 文件夹中）

关于图像放大模型，我推荐4x_NMKD-Siax_200k.pth或4x_UltraSharp.pth。这两个模型效果最佳。当然，您也可以尝试其他图像放大模型。您可以在这里找到一些不错的选择。
如果您之前使用过 FLUX，那么您已经拥有 ae.safetensors 文件，无需再次下载。
如果你的显卡配备 8GB 显存，也可以使用FP8 检查点
。我认为没有必要在这里使用 GGUF 模型，因为 BF16 和 FP8 模型对于各种显卡来说都足够小了。请确保使用最新版本的 ComfyUI Core。同时，不要忘记更新 ComfyUI 前端包和自定义节点。否则可能会出现兼容性问题。

❓运行此工作流程是否需要一些特殊节点？
工作流中的节点都是常见的标准节点，应该已经安装在您的 ComfyUI 中。如果 ComfyUI 仍然提示缺少节点，请安装该节点并短暂重启。

此工作流程中使用的自定义节点：
rgthree-舒适:https://github.com/rgthree/rgthree-comfy
舒适用户界面 - 易于使用:https://github.com/yolain/ComfyUI-Easy-Use
ComfyUI_UltimateSDUpscale:https://github.com/ssitu/ComfyUI_UltimateSDUpscale
保存图像并生成元数据:https://github.com/giriss/comfy-image-saver
ControlAltAI_Nodes:https://github.com/gseth/ControlAltAI-Nodes
VRGameDevGirl 视频增强节点:https://github.com/vrgamegirl19/comfyui-vrgamedevgirl

🛠️为什么文本编码器（正向提示）要连接到 KSampler 节点上的负向和正向提示？
如果 CFG 值设置为 1.0，则否定提示将被忽略。这是模型速度如此之快的原因之一。这是有意为之，并非错误。其他工作流程会忽略这一点。只需输入肯定提示即可！

💡使用技巧：
只需在左侧设置所需的分辨率，在最右侧选择您喜欢的放大器，然后开始生成即可。
如果您只想生成用于测试的原始图像，只需使用左上角的第一个节点关闭放大组即可。
您可以随意尝试调整终极标清图像放大节点中的降噪和配置文件值，以获得最佳效果。也可以尝试不同的放大模型。
这个模型不需要设置超过10步。它是一个8步模型。设置更高的步数并不会带来更好的图像质量。只需将其保持在8步、9步或最多10步即可。
我喜欢在节点中直接选择宽高比（例如 5:7 或 9:16）。如果您更喜欢手动输入分辨率，只需断开或删除“基础分辨率节点”即可。之后，您可以在“潜在图像”节点中输入所需的分辨率。
