# ComfyUI 三个月从入门到放弃

![进度](https://img.shields.io/badge/进度-第1周-绿色) 
![显卡](https://img.shields.io/badge/显卡-NVIDIA_A3000_12G-blue)
![目标](https://img.shields.io/badge/目标-死心-orange)

## 🎯 项目目标
在三个月内系统掌握ComfyUI，最终能够彻底死心。

**硬件配置**：NVIDIA A3000 12GB 专业显卡
**时间框架**：2025年 12月02日 至 2026年02月28日
**最终产出**：1-3分钟原创AI短视频

## 📚 学习路线

### 第一阶段：基础构建（第1-4周）
- [x] 第1周：环境配置与界面熟悉
- [ ] 第2周：提示词工程与模型管理
- [ ] 第3周：可控性入门（ControlNet）
- [ ] 第4周：进阶技巧与效率工具

### 第二阶段：动态化（第5-8周）
- [ ] 第5周：动画核心（AnimateDiff）
- [ ] 第6周：镜头语言与运镜
- [ ] 第7周：角色与场景一致性
- [ ] 第8周：工作流模块化

### 第三阶段：商业实战（第9-12周）
- [ ] 第9周：音频生成与口型同步
- [ ] 第10周：后期处理与合成
- [ ] 第11周：完整项目实践
- [ ] 第12周：优化与发布

## 🛠️ A3000 12G 专属配置

### 性能基准
| 任务 | 推荐设置 | 显存占用 | 预计耗时 |
|------|----------|----------|----------|
| 单图生成 | 768x768, steps=20 | 6-7GB | 8-12秒 |
| 批处理 | 512x512, batch=4 | 8-9GB | 15-20秒 |
| SDXL生成 | 1024x1024 | 10-11GB | 15-25秒 |

### 优化建议
1. 使用 `euler_ancestral` 采样器加速生成
2. 开启 xformers 优化
3. 定期清理 output 文件夹
4. 大分辨率使用 Tiled VAE

## 📂 项目结构

![GitHub Pages](https://github.com/你的用户名/ComfyUI-Mastery-3Months/actions/workflows/pages/pages-build-deployment/badge.svg)