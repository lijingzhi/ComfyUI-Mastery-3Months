# Z-Image Turbo 简易文本转图像工作流程 + 图像放大器和 Lora 加载器

Z-Image Turbo 是一款快速、精简、强大且高效的图像生成模型，拥有 60 亿个参数。该模型的优势在于能够生成逼真的图像，但输出图像质量仍需通过放大处理达到可接受水平，本工作流程集成了广为人知的 Ultimate SD Upscaler，以解决这一问题。

## 🚀 前置准备清单

### 必需文件及目录



1. 本工作流程文件：下载后直接加载到 ComfyUI 中

2. Z-Image 模型：`z_image_turbo_bf16.safetensors` → 放置于 `\models\diffusion_models\` 目录

3. 文本编码器文件：`qwen_3_4b.safetensors` → 放置于 `\models\text_encoders\` 目录

4. VAE 文件：`ae.safetensors` → 放置于 `\models\vae\` 目录

5. 图像放大模型：放置于 `\models\upscale_models\` 目录

### 推荐放大模型



* 优先推荐：`4x_NMKD-Siax_200k.pth` 或 `4x_UltraSharp.pth`（效果最佳）

* 其他可选：[优质放大模型集合][https://huggingface.co/uwg/upscaler/tree/main/ESRGAN]([https://huggingface.co/uwg/upscaler/tree/main/ESRGAN])

### 额外说明



* 若之前使用过 FLUX，已拥有 `ae.safetensors`，无需重复下载

* 8GB 显存显卡可使用 FP8 检查点

* 无需使用 GGUF 模型，BF16 和 FP8 模型体积足够小

* 必须使用：


  * 最新版本 ComfyUI Core

  * 更新后的 ComfyUI 前端包

  * 更新后的自定义节点（避免兼容性问题）

## ❓ 特殊节点要求

工作流默认使用 ComfyUI 标准节点，若提示缺少节点，安装对应节点后重启即可。

### 依赖的自定义节点



1. rgthree - 舒适：[https://github.com/rgthree/rgthree-comfy](https://github.com/rgthree/rgthree-comfy)

2. 舒适用户界面 - 易于使用：[https://github.com/yolain/ComfyUI-Easy-Use](https://github.com/yolain/ComfyUI-Easy-Use)

3. ComfyUI\_UltimateSDUpscale：[https://github.com/ssitu/ComfyUI\_UltimateSDUpscale](https://github.com/ssitu/ComfyUI_UltimateSDUpscale)

4. 保存图像并生成元数据：[https://github.com/giriss/comfy-image-saver](https://github.com/giriss/comfy-image-saver)

5. ControlAltAI\_Nodes：[https://github.com/gseth/ControlAltAI-Nodes](https://github.com/gseth/ControlAltAI-Nodes)

6. VRGameDevGirl 视频增强节点：[https://github.com/vrgamegirl19/comfyui-vrgamedevgirl](https://github.com/vrgamegirl19/comfyui-vrgamedevgirl)

## 🛠️ 常见疑问：文本编码器连接逻辑

> 为什么文本编码器（正向提示）要同时连接到 KSampler 节点的负向和正向提示？

这是有意设计而非错误：



* 当 CFG 值设置为 1.0 时，否定提示会被忽略

* 这是模型速度快的核心原因之一

* 使用时仅需输入肯定提示即可，无需额外设置否定提示

## 💡 使用技巧



1. 基础操作：左侧设置分辨率 → 右侧选择放大器 → 启动生成

2. 测试原始图像：关闭左上角第一个节点的放大组

3. 效果优化：

* 调整 Ultimate SD Upscale 节点的降噪值和配置文件

* 尝试不同的放大模型

1. 步数设置：模型为 8 步优化，建议保持 8-10 步（更高步数无质量提升）

2. 分辨率设置：

* 支持直接选择宽高比（如 5:7、9:16）

* 需手动输入分辨率时，断开 / 删除「基础分辨率节点」，在「潜在图像」节点中自定义

> （注：文档部分内容可能由 AI 生成）
